import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';

class InputChipsDemo extends StatefulWidget {
  final chipText;
  InputChipsDemo({this.chipText});
  @override
  _InputChipsDemoState createState() =>
      _InputChipsDemoState(chipText: this.chipText);
}

class _InputChipsDemoState extends State<InputChipsDemo> {
  final chipText;
  _InputChipsDemoState({this.chipText});
  bool isSelected = false;
  bool isDelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InputChip(
        label: Text(chipText),
        labelStyle: TextStyle(color: ThemeColors.grey1),
        backgroundColor: ThemeColors.grey8,
        onSelected: (bool value) {
          setState(() {
            isSelected = value;
          });
        },
        selected: isSelected,
        selectedColor: ThemeColors.green7,
      ),
    );
  }
}
