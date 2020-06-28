import 'package:notifier/components/carousel/model/movie_details.dart';
import 'package:flutter/material.dart';

import 'details_card.dart';

class CarouselDetailsBuilder extends StatelessWidget {
  final index, pageController;
  CarouselDetailsBuilder({this.index, this.pageController,});
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, child) {
        double value = 1;
        if (pageController.position.haveDimensions) {
          value = pageController.page - index;
          value = (1 - (value.abs() * 2.5)).clamp(0.0, 1.0);
        }

        return Expanded(
          child: Transform.translate(
            offset: Offset(0, 100 + (-value) * 100),
            child: Opacity(
              opacity: value,
              child: Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
                child: DetailsCard(
                  title: movieList[index].title,
                  year: movieList[index].year,
                  stroy: movieList[index].stroy,
                ),
              ),
            ),
          ),
        );
      },
    );;
  }
}
