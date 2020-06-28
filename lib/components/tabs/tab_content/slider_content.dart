
import 'package:flutter/material.dart';
import 'package:notifier/components/cards/basic_plain_card.dart';
import 'package:notifier/components/carousel/carousel_slider.dart';
import 'package:notifier/components/decoration_design/carousel_card.dart';

class SliderContent extends StatefulWidget {
  @override
  _SliderContentState createState() => _SliderContentState();
}

class _SliderContentState extends State<SliderContent> {
  List carouselList = [
    Carouselcard(
      carouselImage: "assets/smile.png",
      cardTitle: "Smile",
      cardSubtitle: "2016",
      rating: "5*",
    ),
    Carouselcard(
      carouselImage: "assets/joker.jpg",
      cardTitle: "Joker",
      cardSubtitle: "2019",
      rating: "5*",
    ),
    Carouselcard(
      carouselImage: "assets/sm.jpg",
      cardTitle: "Spider",
      cardSubtitle: "2019",
      rating: "4*",
    ),
  ];

  List imageList = ["assets/smile.png", "assets/joker.jpg", "assets/sm.jpg",];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          CustomCarousel(
            carouselList: imageList,
          ),
          SizedBox(height: 10),
          BasicPlainCard(
            title: "Carousel",
            subtitle: "Slider",
            body: "Custom carousel slider with auto play active.",
          ),
        ],
      ),
    );
  }
}
