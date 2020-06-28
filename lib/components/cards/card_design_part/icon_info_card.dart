import 'package:notifier/components/cards/card_design_part/card_icon.dart';
import 'package:notifier/components/cards/text_format/sub_title.dart';
import 'package:notifier/components/cards/text_format/title_text.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';

class IconInfoCard extends StatelessWidget {
  final String title, subtitle;
  final iconName, color;
  IconInfoCard({
    this.title,
    this.subtitle,
    this.color,
    this.iconName,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(25, 5, 25, 10),
      decoration: BoxDecoration(
        color: ThemeColors.primaryColor,
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 10,
          ),
          CardIcon(
            iconName: iconName,
            color: color,
          ),
          SizedBox(
            width: 25,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              TitleText(
                title: title,
              ),
              SizedBox(
                height: 5,
              ),
              SubTitle(
                subtitle: subtitle,
              )
            ],
          )
        ],
      ),
    );
  }
}
