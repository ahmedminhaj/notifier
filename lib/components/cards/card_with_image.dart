
import 'package:notifier/components/buttons/secondary_button.dart';
import 'package:notifier/components/cards/card_design_part/card_image.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:notifier/components/style_sheet/shape_file.dart';
import 'package:flutter/material.dart';

import 'text_format/paragraph_text.dart';
import 'text_format/sub_title.dart';
import 'text_format/title_text.dart';

class CardWithImage extends StatelessWidget {
  final String title, buttonText;
  final String subTitle;
  final String body;
  final asset;

  CardWithImage({
    this.title,
    this.subTitle,
    this.body,
    this.asset,
    this.buttonText,
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
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TitleText(
                  title: title,
                ),
                SizedBox(
                  height: 5,
                ),
                SubTitle(
                  subtitle: subTitle,
                ),
                SizedBox(
                  height: 10,
                ),
                ParagraphText(
                  body: body,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SecondaryButton(
                      icon: Icons.contact_mail,
                      buttonText: buttonText,
                      buttonShape: ShapeStyle.roundedCircle,
                      color: ThemeColors.secondaryButtonColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SecondaryButton(
                      align: Alignment.topRight,
                      buttonText: buttonText,
                      color: ThemeColors.secondaryButtonColor,
                      buttonShape: ShapeStyle.oval,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
