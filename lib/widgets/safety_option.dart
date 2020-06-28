import 'package:flutter/material.dart';
import 'package:notifier/widgets/option_card.dart';

class SafetyOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          OptionCard(
            optionTitle: "Reminder",
            optionIcon: Icons.alarm_add,
            onPressed: () {
              Navigator.of(context).pushNamed("/reminder");
            },
          ),
          OptionCard(
            optionTitle: "Statistics",
            optionIcon: Icons.show_chart,
            onPressed: () {
              Navigator.of(context).pushNamed("/statistics");
            },
          ),
          OptionCard(
            optionTitle: "Prevention",
            optionIcon: Icons.info_outline,
            onPressed: null,
          ),
          OptionCard(
            optionTitle: "Hotline",
            optionIcon: Icons.phone_in_talk,
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
