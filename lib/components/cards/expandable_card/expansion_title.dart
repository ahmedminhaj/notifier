import 'package:notifier/components/cards/text_format/sub_title.dart';
import 'package:notifier/components/cards/text_format/title_text.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';

class ExpansionTitle extends StatelessWidget {
  final title, subtitle;
  ExpansionTitle({
    this.subtitle,
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TitleText(
          title: title,
          color: ThemeColors.purple9,
        ),
        SizedBox(height: 5),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SubTitle(
              subtitle: subtitle,
            ),
            Spacer(),
            Icon(
              Icons.arrow_drop_down_circle,
              color: ThemeColors.purple9,
            ),
          ],
        ),
      ],
    );
  }
}
