
import 'package:notifier/components/cards/card_design_part/card_icon.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';
import 'package:notifier/components/style_sheet/global.dart';

class CustomIconButton extends StatelessWidget {
  final iconName, buttonSize, iconSize, onpressed;
  CustomIconButton({
    this.iconName,
    this.buttonSize,
    this.iconSize,
    this.onpressed
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawMaterialButton(
        fillColor: dark,
        elevation: 10.0,
        shape: CircleBorder(),
        onPressed:onpressed,
        constraints: BoxConstraints.tight(
          Size(buttonSize != null ? buttonSize : 50, 60),
        ),
        child: CardIcon(
          iconName: iconName,
          iconSize: iconSize,
          
        ),
      ),
    );
  }
}
