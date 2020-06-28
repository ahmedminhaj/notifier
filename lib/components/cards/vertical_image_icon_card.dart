import 'package:notifier/components/cards/card_design_part/card_image.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';

import 'card_design_part/card_icon.dart';

class VerticalImageIconCard extends StatelessWidget {
  final asset;
  final icon1, icon2, icon3;
  final color1, color2, color3;
  VerticalImageIconCard({
    this.asset,
    this.color1,
    this.color2,
    this.color3,
    this.icon1,
    this.icon2,
    this.icon3,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 250,
            child: CardImage(
              asset: asset,
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            children: <Widget>[
              CardIcon(
                iconName: icon1,
                color: color1,
              ),
              SizedBox(
                height: 30,
              ),
              CardIcon(
                iconName: icon2,
                color: color2,
              ),
              SizedBox(
                height: 30,
              ),
              CardIcon(
                iconName: icon3,
                color: color3,
              ),
            ],
          )
        ],
      ),
    );
  }
}
