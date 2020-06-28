import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  final iconName;
  final iconColor, buttonShape;
  ButtonIcon({
    this.iconColor,
    this.iconName,
    this.buttonShape,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: null,
        child: Center(
          child: Icon(
            iconName,
            color: iconColor,
            size: 30,
          ),
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: iconColor,
            width: 2,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(buttonShape),
        ),
      ),
    );
  }
}
