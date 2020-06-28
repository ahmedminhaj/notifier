
import 'package:notifier/components/cards/expandable_card/expansion-body.dart';
import 'package:notifier/components/cards/expandable_card/expansion_title.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:notifier/components/style_sheet/size_file.dart';
import 'package:flutter/material.dart';

class ExpandedCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      elevation: 4.0,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ExpansionTile(
          title: ExpansionTitle(
            title: "Expandable card",
            subtitle: "Click to expand",
          ),
          trailing: SizedBox(),
          children: <Widget>[
            ExpansionBody(
              subtitle: "Profile",
              iconName: Icons.person,
              iconColor: ThemeColors.teal7,
              iconsize: FontSize.medium,
            ),
            ExpansionBody(
              subtitle: "Edit",
              iconName: Icons.edit,
              iconColor: ThemeColors.green7,
              iconsize: FontSize.medium,
            ),
          ],
        ),
      ),
    );
  }
}
