import 'package:notifier/components/cards/card_design_part/card_icon.dart';
import 'package:notifier/components/cards/card_design_part/card_image.dart';
import 'package:notifier/components/cards/text_format/title_text.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';

class ImageIconCard extends StatelessWidget {
  final String title;
  final asset;
  final icon1, icon2, icon3;
  final color1, color2, color3;

  ImageIconCard({
    this.asset,
    this.color1,
    this.color2,
    this.color3,
    this.icon1,
    this.icon2,
    this.icon3,
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: ThemeColors.primaryColor,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: ThemeColors.grey5,
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(3, 3),
          )
        ],
      ),
      child: Column(
        children: <Widget>[
          CardImage(
            asset: asset,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TitleText(
                  title: title,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CardIcon(
                      iconName: icon1,
                      color: color1,
                    ),
                    CardIcon(
                      iconName: icon2,
                      color: color2,
                    ),
                    CardIcon(
                      iconName: icon3,
                      color: color3,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
