import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarousel extends StatefulWidget {
  final List carouselList;
  CustomCarousel({this.carouselList});
  @override
  _CustomCarouselState createState() =>
      _CustomCarouselState(carouselList: this.carouselList);
}

class _CustomCarouselState extends State<CustomCarousel> {
  final List carouselList;
  _CustomCarouselState({this.carouselList});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      viewportFraction: 0.9,
      aspectRatio: 1.7,
      autoPlay: true,
      enlargeCenterPage: true,
      items: carouselList.map(
        (image) {
          return Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
          );
        },
      ).toList(),
    );
  }
}
