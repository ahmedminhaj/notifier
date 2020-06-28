
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';

import 'text_format/paragraph_text.dart';
import 'text_format/sub_title.dart';
import 'text_format/title_text.dart';

class BasicPlainCard extends StatelessWidget {
  final customWidget;
  final title;
  final subtitle;
  final body;

  BasicPlainCard({
    this.title,
    this.subtitle,
    this.body,
    this.customWidget,
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
              offset: Offset(3, 3))
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
            subtitle: subtitle,
          ),
          SizedBox(
            height: 15,
          ),
          ParagraphText(
            body: body,
          ),
          Container(
            child: customWidget,
          )
        ],
      ),
    );
  }
}
