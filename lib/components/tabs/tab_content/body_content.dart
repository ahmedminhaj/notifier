
import 'package:flutter/material.dart';
import 'package:notifier/components/cards/basic_plain_card.dart';
import 'package:notifier/components/style_sheet/color_file.dart';

import '../inner_tab.dart';

class DetailsContent extends StatefulWidget {
  @override
  _DetailsContentState createState() => _DetailsContentState();
}

class _DetailsContentState extends State<DetailsContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Column(
            children: <Widget>[
              BasicPlainCard(
                title: "Tab Bar",
                subtitle: "Tabbar outside appbar",
                body:
                    "Normally tabs are displayed at the bottom of the appBar. Tab could be placed in a content body.",
              ),
              SizedBox(
                height: 5,
              ),
              BasicPlainCard(
                title: "Tab View",
                subtitle: "Tab in a content body",
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: ThemeColors.teal2,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InnerTab(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
