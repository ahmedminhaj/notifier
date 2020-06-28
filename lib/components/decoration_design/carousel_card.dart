import 'package:notifier/components/cards/text_format/paragraph_text.dart';
import 'package:notifier/components/cards/text_format/sub_title.dart';
import 'package:notifier/components/cards/text_format/title_text.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';

class Carouselcard extends StatelessWidget {
  final carouselImage;
  final cardTitle, cardSubtitle, rating;

  Carouselcard({
    this.carouselImage,
    this.cardSubtitle,
    this.cardTitle,
    this.rating,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: ThemeColors.grey3,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage(
              carouselImage,
            ),
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Column(
              children: <Widget>[
                TitleText(
                  title: cardTitle,
                ),
                SubTitle(
                  subtitle: cardSubtitle,
                ),
                ParagraphText(
                  body: rating,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
