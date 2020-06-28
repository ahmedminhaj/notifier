import 'package:notifier/components/buttons/plain_button.dart';
import 'package:notifier/components/cards/card_design_part/card_icon.dart';
import 'package:notifier/components/cards/card_design_part/card_image.dart';
import 'package:notifier/components/cards/text_format/paragraph_text.dart';
import 'package:notifier/components/cards/text_format/sub_title.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';

class MediaCard extends StatelessWidget {
  final asset, icon1, color1;
  final String body, subtitle1, subtitle2, buttonText;

  MediaCard({
    this.body,
    this.asset,
    this.buttonText,
    this.color1,
    this.icon1,
    this.subtitle1,
    this.subtitle2,
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
          Row(
            children: <Widget>[
              Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                  ),
                ),
                child: CardImage(
                  asset: asset,
                ),
              ),
              Container(
                width: 130,
                padding: EdgeInsets.all(15),
                child: ParagraphText(
                  body: body,
                ),
              ),
            ],
          ),
          Divider(
            color: ThemeColors.grey6,
            thickness: 1.5,
            height: 1.1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CardIcon(
                iconName: icon1,
                color: color1,
              ),
              Row(
                children: <Widget>[
                  SubTitle(
                    subtitle: subtitle1,
                  ),
                  SizedBox(width: 10),
                  SubTitle(
                    subtitle: subtitle2,
                  ),
                ],
              ),
              PlainButton(
                buttonText: buttonText,
                color: color1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
