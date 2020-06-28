import 'package:notifier/components/cards/text_format/title_text.dart';
import 'package:notifier/components/sliders/basic_slider.dart';
import 'package:flutter/material.dart';

class SliderDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: TitleText(
        title: "Set Volume",
      ),
      content: BasicSlider(),
      actions: <Widget>[
        MaterialButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Save"),
          elevation: 4.0,
        ),
      ],
    );
  }
}