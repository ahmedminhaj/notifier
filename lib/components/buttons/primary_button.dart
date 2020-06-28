import 'package:notifier/components/cards/card_design_part/card_icon.dart';
import 'package:notifier/components/cards/text_format/button_text.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final shadowColor, buttonShape;
  final color, icon, iconColor;
  final onPressed;
  final buttonText, buttonFontSize, iconSize, buttonWidth, buttonHeight;

  PrimaryButton({
    this.buttonText,
    this.buttonShape,
    this.color,
    this.onPressed,
    this.shadowColor,
    this.icon,
    this.iconColor,
    this.buttonFontSize,
    this.iconSize,
    this.buttonHeight,
    this.buttonWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth != null ? buttonWidth : 120,
      height: buttonHeight != null ? buttonHeight : 40,
      child: Material(
        borderRadius: BorderRadius.circular(buttonShape),
        shadowColor: shadowColor != null ? shadowColor : ThemeColors.grey1,
        color: color,
        elevation: 2.0,
        child: FlatButton(
          onPressed: onPressed,
          child: Center(
            child: (icon == null) && (buttonText != null)
                ? ButtonText(
                    buttonText: buttonText,
                    textColor: ThemeColors.grey1,
                    buttonFontSize: buttonFontSize,
                  )
                : (icon != null) && (buttonText == null)
                    ? CardIcon(
                        iconName: icon,
                        color: ThemeColors.grey1,
                        iconSize: iconSize,
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CardIcon(
                            iconName: icon,
                            color: ThemeColors.grey1,
                            iconSize: iconSize,
                          ),
                          ButtonText(
                            buttonText: buttonText,
                            textColor: ThemeColors.grey1,
                            buttonFontSize: buttonFontSize,
                          ),
                        ],
                      ),
          ),
        ),
      ),
    );
  }
}
