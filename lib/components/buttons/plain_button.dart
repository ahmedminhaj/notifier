import 'package:notifier/components/cards/card_design_part/card_icon.dart';
import 'package:notifier/components/cards/text_format/button_text.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';

class PlainButton extends StatelessWidget {
  final String buttonText;
  final icon, color, onpressed;
  PlainButton({
    this.buttonText,
    this.icon,
    this.color,
    this.onpressed,
  });
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      hoverColor: ThemeColors.grey3,
      onPressed: onpressed,
      child: Center(
        child: (icon == null) && (buttonText != null)
            ? ButtonText(
                buttonText: buttonText,
                textColor: color,
              )
            : (icon != null) && (buttonText == null)
                ? CardIcon(
                    iconName: icon,
                    color: color,
                  )
                : Row(
                    children: <Widget>[
                      CardIcon(
                        iconName: icon,
                        color: color,
                      ),
                      ButtonText(
                        buttonText: buttonText,
                        textColor: color,
                      ),
                    ],
                  ),
      ),
    );
  }
}
