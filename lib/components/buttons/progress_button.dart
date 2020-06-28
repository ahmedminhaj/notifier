import 'dart:async';

import 'package:notifier/components/cards/text_format/button_text.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';

class ProgressButton extends StatefulWidget {
  final buttonText;
  ProgressButton({this.buttonText});
  @override
  _ProgressButtonState createState() =>
      _ProgressButtonState(buttonText: this.buttonText);
}

class _ProgressButtonState extends State<ProgressButton> {
  final buttonText;
  _ProgressButtonState({
    this.buttonText
  });
  int state = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        elevation: 3.0,
        color: ThemeColors.green8,
        minWidth: MediaQuery.of(context).size.width,
        height: 48.0,
        onPressed: () {
          setState(() {
            if (state == 0) {
              buttonanimation();
            }
          });
        },
        child: animatedButton(),
      ),
    );
  }

  Widget animatedButton() {
    if (state == 0) {
      return ButtonText(
        buttonText: buttonText,
        buttonFontSize: 22.0,
        textColor: ThemeColors.grey1,
      );
    } else if (state == 1) {
      return CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
      );
    } else {
      return Icon(
        Icons.done,
        color: Colors.white,
      );
    }
  }

  void buttonanimation() {
    setState(() {
      state = 1;
    });

    Timer(Duration(milliseconds: 2000), () {
      setState(() {
        state = 3;
      });
    });
  }
}
