import 'package:flutter/material.dart';

class CarouselItemBuilder extends StatelessWidget {
  List imageList;
  final pageController, index;
  CarouselItemBuilder({
    this.imageList,
    this.pageController,
    this.index,
  });
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, child) {
        double value = 1;
        if (pageController.position.haveDimensions) {
          value = pageController.page - index;
          value = (1 - (value.abs() * 0.5)).clamp(0.0, 1.0);
          return Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
              height: Curves.easeIn.transform(value) * 800,
              child: child,
            ),
          );
        } else {
          return Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
              height:
                  Curves.easeIn.transform(index == 0 ? value : value * 0.5) *
                      800,
              child: child,
            ),
          );
        }
      },
      child: Material(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: Image.asset(
              imageList[index],
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );
  }
}
