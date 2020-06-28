
import 'package:flutter/material.dart';

import 'carousel_part/carousel_fixed_details_builder.dart';
import 'carousel_part/carousel_item_builder.dart';

final imageList = [
  "assets/joker.jpg",
  "assets/smile.png",
  "assets/sm.jpg",
];

class CarouselSwipeFixedContainer extends StatefulWidget {
  @override
  _CarouselSwipeFixedContainerState createState() =>
      _CarouselSwipeFixedContainerState();
}

class _CarouselSwipeFixedContainerState
    extends State<CarouselSwipeFixedContainer> {
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
          ),
          Column(
            children: <Widget>[
              FixedDetailsBuilder(
                pageController: pageController,
                index: currentPage,
              ),
            ],
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
