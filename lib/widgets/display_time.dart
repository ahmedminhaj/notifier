import 'package:flutter/material.dart';
import 'package:notifier/components/buttons/plain_button.dart';
import 'package:notifier/components/cards/text_format/title_text.dart';
import 'package:notifier/components/style_sheet/global.dart';

class DisplayTime extends StatelessWidget {
  final String title, buttonText;
  final color;
  final onpressed;
  DisplayTime({
    this.title,
    this.buttonText,
    this.color,
    this.onpressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: dark,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              color: light,
              blurRadius: 5,
              spreadRadius: 2,
              offset: Offset(3, 3))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TitleText(
            title: title,
            color: Colors.white,
          ),
          PlainButton(
            buttonText: buttonText,
            color: color,
            onpressed: onpressed,
          ),
        ],
      ),
    );
  }
}
