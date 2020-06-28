import 'package:notifier/components/style_sheet/size_file.dart';
import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  final String buttonText;
  final textColor;
  final buttonFontSize;
  ButtonText({
    this.buttonText,
    this.textColor,
    this.buttonFontSize,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      buttonText != null ? buttonText : "",
      style: TextStyle(
        color: textColor,
        fontSize: buttonFontSize != null ? buttonFontSize : FontSize.regular,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
