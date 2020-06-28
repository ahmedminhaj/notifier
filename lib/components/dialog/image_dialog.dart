import 'package:notifier/components/cards/text_format/sub_title.dart';
import 'package:notifier/components/cards/text_format/title_text.dart';
import 'package:flutter/material.dart';

class DialogImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: TitleText(
        title: "Image Alert",
      ),
      content: Container(
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SubTitle(
              subtitle: "Pop-up image alert",
            ),
            Container(
              width: 100,
              height: 100,
              child: Image.asset("assets/alert.png"),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            "Ok",
          ),
        ),
      ],
    );
  }
}
