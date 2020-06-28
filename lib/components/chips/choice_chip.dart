import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';

class ChoiceChipDemo extends StatefulWidget {
  final List choiceList;
  ChoiceChipDemo({this.choiceList});
  @override
  _ChoiceChipDemoState createState() =>
      _ChoiceChipDemoState(choiceList: this.choiceList);
}

class _ChoiceChipDemoState extends State<ChoiceChipDemo> {
  String selectedChoice = "";
  List choiceList;
  _ChoiceChipDemoState({this.choiceList});
  _choiceList() {
    List<Widget> choices = List();

    choiceList.forEach((element) {
      choices.add(Container(
        padding: EdgeInsets.all(2.0),
        child: ChoiceChip(
          label: Text(element),
          labelStyle: TextStyle(color: ThemeColors.grey1),
          backgroundColor: ThemeColors.grey8,
          selected: selectedChoice == element,
          selectedColor: ThemeColors.green7,
          onSelected: (selected) {
            setState(() {
              selectedChoice = element;
            });
          },
        ),
      ));
    });
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 2,
      runSpacing: -5,
      children: _choiceList(),
    );
  }
}
