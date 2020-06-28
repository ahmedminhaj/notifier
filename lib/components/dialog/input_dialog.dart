import 'package:notifier/components/cards/text_format/title_text.dart';
import 'package:flutter/material.dart';

class DialogInput extends StatelessWidget {
  final customController;

  DialogInput({this.customController});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: TitleText(
        title: "Input Dialog",
      ),
      content: TextField(
        decoration: InputDecoration(
          labelText: "Team name",
          hintText: "eg. Arsenal",
        ),
        controller: customController,
      ),
      actions: <Widget>[
        MaterialButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Ok"),
          elevation: 4.0,
        ),
      ],
    );
  }
}
