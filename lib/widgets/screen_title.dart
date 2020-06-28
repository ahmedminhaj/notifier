import 'package:flutter/material.dart';
import 'package:notifier/components/cards/text_format/title_text.dart';
import 'package:notifier/components/style_sheet/global.dart';

class ScreenTittle extends StatelessWidget {
  final String title;
  ScreenTittle({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
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
      child: TitleText(
        title: title,
        color: Colors.white,
      ),
    );
  }
}
