import 'package:notifier/components/cards/card_design_part/card_icon.dart';
import 'package:notifier/components/cards/text_format/sub_title.dart';
import 'package:flutter/material.dart';

class ExpansionBody extends StatelessWidget {
  final subtitle, iconName, iconColor, iconsize;

  ExpansionBody({
    this.iconName,
    this.iconColor,
    this.subtitle,
    this.iconsize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          SubTitle(
            subtitle: subtitle,
          ),
          Spacer(),
          CardIcon(
            iconName: iconName,
            color: iconColor,
            iconSize: iconsize,
          ),
        ],
      ),
    );
  }
}
