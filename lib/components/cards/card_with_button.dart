import 'package:notifier/components/buttons/plain_button.dart';
import 'package:notifier/components/buttons/secondary_button.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:notifier/components/style_sheet/shape_file.dart';
import 'package:flutter/material.dart';

import 'text_format/paragraph_text.dart';
import 'text_format/sub_title.dart';
import 'text_format/title_text.dart';

class CardWithButton extends StatelessWidget {
  final String title, button1text, button2text;
  final String subTitle;
  final String body;
  final onpressedButton1;

  CardWithButton({
    this.title,
    this.subTitle,
    this.body,
    this.button1text,
    this.button2text,
    this.onpressedButton1
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20),
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
            height: 15,
          ),
          ParagraphText(
            body: body,
          ),
          SizedBox(
            height: 1,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
            child: Row(
              children: <Widget>[
                PlainButton(
                  buttonText: button2text,
                  color: ThemeColors.secondaryButtonColor,
                ),
                SecondaryButton(
                  onpressed: onpressedButton1,
                  buttonText: button1text,
                  color: ThemeColors.secondaryButtonColor,
                  buttonShape: ShapeStyle.circuler,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
