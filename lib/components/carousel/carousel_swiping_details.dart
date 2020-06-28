import 'package:notifier/components/carousel/carousel_part/carousel_details_builder.dart';
import 'package:notifier/components/carousel/carousel_part/carousel_item_builder.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';

final imageList = [
  "assets/joker.jpg",
  "assets/smile.png",
  "assets/sm.jpg",
];

final colorList = [
  Colors.green[800],
  Colors.indigo,
  ThemeColors.red9,
];

class CarouselSwiping extends StatefulWidget {
  @override
  _CarouselSwipingState createState() => _CarouselSwipingState();
}

class _CarouselSwipingState extends State<CarouselSwiping> {
  int currentPage = 0;
  PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: currentPage,
      keepPage: false,
      viewportFraction: 0.6,
    );
    
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            color: colorList[currentPage],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 350.0,
                child: PageView.builder(
                  itemBuilder: (context, index) {
                    return CarouselItemBuilder(
                      imageList: imageList,
                      pageController: pageController,
                      index: index,
                    );
                  },
                  controller: pageController,
                  pageSnapping: true,
                  onPageChanged: _onPageChanged,
                  itemCount: 3,
                  physics: ClampingScrollPhysics(),
                ),
              ),
              CarouselDetailsBuilder(
                index: currentPage,
                pageController: pageController,
              ),
            ],
          ),
        ],
      ),
    );
  }

  _onPageChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }
}
