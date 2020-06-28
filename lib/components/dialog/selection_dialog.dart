import 'package:notifier/components/cards/text_format/title_text.dart';
import 'package:flutter/material.dart';

class SelectionDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: TitleText(
        title: "Select Component",
      ),
      children: <Widget>[
        SimpleDialogOption(
          onPressed: () {
            Navigator.pushNamed(context, "/Card");
          },
          child: Text("Card"),
        ),
        SimpleDialogOption(
          onPressed: () {
            Navigator.pushNamed(context, "/Button");
          },
          child: Text("Button"),
        ),
        SimpleDialogOption(
          onPressed: () {
            Navigator.pushNamed(context, "/Tab");
          },
          child: Text("Tab"),
        ),
      ],
    );
  }
}
