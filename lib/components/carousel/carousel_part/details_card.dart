import 'package:notifier/components/cards/text_format/paragraph_text.dart';
import 'package:notifier/components/cards/text_format/sub_title.dart';
import 'package:notifier/components/cards/text_format/title_text.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  final title, year, stroy;
  DetailsCard({
    this.title,
    this.year,
    this.stroy,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TitleText(
          title: title,
          color: ThemeColors.grey1,
        ),
        SizedBox(height: 5.0),
        SubTitle(
          subtitle: year,
          color: ThemeColors.grey1,
        ),
        SizedBox(height: 5.0),
        ParagraphText(
          body: stroy,
          color: ThemeColors.grey1,
        ),
      ],
    );
  }
}
