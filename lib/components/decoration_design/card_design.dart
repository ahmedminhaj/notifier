import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';

class CardDesign extends StatelessWidget {
  final customWidget;
  CardDesign({
    this.customWidget,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
      decoration: BoxDecoration(
        color: ThemeColors.primaryColor,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: ThemeColors.grey5,
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: customWidget,
    );
  }
}
