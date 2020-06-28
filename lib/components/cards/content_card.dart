import 'package:notifier/components/cards/card_design_part/card_image.dart';
import 'package:notifier/components/cards/card_design_part/icon_info_card.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  final asset, iconName1, iconName2, color1, color2;
  final String title1, title2, subtitle1, subtitle2;

  ContentCard({
    this.asset,
    this.color1,
    this.color2,
    this.iconName1,
    this.iconName2,
    this.subtitle1,
    this.subtitle2,
    this.title1,
    this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      //padding: EdgeInsets.all(20),
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
          IconInfoCard(
            title: title1,
            subtitle: subtitle1,
            iconName: iconName1,
            color: color1,
          ),
          IconInfoCard(
            title: title2,
            subtitle: subtitle2,
            iconName: iconName2,
            color: color2,
          ),
        ],
      ),
    );
  }
}
