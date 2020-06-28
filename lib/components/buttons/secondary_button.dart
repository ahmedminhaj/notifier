import 'package:notifier/components/cards/card_design_part/card_icon.dart';
import 'package:notifier/components/cards/text_format/button_text.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String buttonText;
  final Alignment align;
  final color, onpressed, buttonShape, icon, buttonFontSize, iconSize, buttonWidth, buttonHeight;

  SecondaryButton({
    this.color,
    this.buttonShape,
    this.align,
    this.buttonText,
    this.icon,
    this.iconSize,
    this.buttonFontSize,
    this.buttonHeight,
    this.buttonWidth,
    this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth != null ? buttonWidth : 120,
      height: buttonHeight != null ? buttonHeight : 40,
      alignment: align,
      child: Material(
        child: FlatButton(
          onPressed: onpressed,
          child: Center(
            child: (icon == null) && (buttonText != null)
                ? ButtonText(
                    buttonText: buttonText,
                    textColor: color,
                    buttonFontSize: buttonFontSize,
                  )
                : (icon != null) && (buttonText == null)
                    ? CardIcon(
                        iconName: icon,
                        color: color,
                        iconSize: iconSize,
                      )
                    : Row(
                        children: <Widget>[
                          CardIcon(
                            iconName: icon,
                            color: color,
                            iconSize: iconSize,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          ButtonText(
                            buttonText: buttonText,
                            textColor: color,
                            buttonFontSize: buttonFontSize,
                          ),
                        ],
                      ),
          ),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: color,
              width: 2,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(buttonShape),
          ),
        ),
      ),
    );
  }
}
