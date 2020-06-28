import 'package:notifier/components/cards/text_format/paragraph_text.dart';
import 'package:notifier/components/cards/text_format/title_text.dart';
import 'package:flutter/material.dart';

class DialogAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: TitleText(
        title: "Alert",
      ),
      content: ParagraphText(
        body: "Alert Message",
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            "Close",
          ),
        ),
      ],
    );
  }
}
