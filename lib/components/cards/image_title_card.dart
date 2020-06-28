import 'dart:ui';

import 'package:notifier/components/cards/text_format/paragraph_text.dart';
import 'package:notifier/components/cards/text_format/title_text.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';

class ImageTitleCard extends StatelessWidget {
  final asset;
  final String title, body;
  ImageTitleCard({
    this.asset,
    this.body,
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
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
              image:
                  DecorationImage(image: AssetImage(asset), fit: BoxFit.cover),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                color: ThemeColors.grey1.withOpacity(0.3),
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TitleText(
                    title: title,
                    color: ThemeColors.grey1,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: ParagraphText(
              body: body,
            ),
          )
        ],
      ),
    );
  }
}
