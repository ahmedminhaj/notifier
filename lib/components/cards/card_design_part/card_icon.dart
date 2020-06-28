import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:notifier/components/style_sheet/size_file.dart';
import 'package:flutter/material.dart';

class CardIcon extends StatelessWidget {
  final iconName, iconSize;
  final color;
  CardIcon({
    this.iconName,
    this.color,
    this.iconSize,
  });
  @override
  Widget build(BuildContext context) {
    return Icon(
      iconName,
      color: color != null ? color : ThemeColors.grey1,
      size: iconSize != null ? iconSize : FontSize.medium,
    );
  }
}
