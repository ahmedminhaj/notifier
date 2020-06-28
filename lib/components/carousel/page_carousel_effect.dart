import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';

class PageCarousel extends StatefulWidget {
  @override
  _PageCarouselState createState() => _PageCarouselState();
}

class _PageCarouselState extends State<PageCarousel> {
  PageController controller;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    controller = PageController(
      initialPage: currentPage,
      keepPage: false,
      viewportFraction: 0.6,
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: PageView.builder(
            itemBuilder: (context, index) => builder(index),
            controller: controller,
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
          ),
        ),
      ),
    );
  }

  builder(int index) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        double value = 1.0;
        if (controller.position.haveDimensions) {
          value = controller.page - index;
          value = (1 - (value.abs() * .5)).clamp(0.0, 1.0);
        }

        return Center(
          child: SizedBox(
            height: Curves.easeOut.transform(value) * 300,
            width: Curves.easeOut.transform(value) * 250,
            child: child,
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(6.0),
        color: index % 2 == 0 ? ThemeColors.grey8 : ThemeColors.grey6,
      ),
    );
  }
}
