import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';

class MultiselectChip extends StatefulWidget {
  List choiceList;
  Function(List<String>) onSelectedChanged;

  MultiselectChip({this.choiceList, this.onSelectedChanged});
  @override
  _MultiselectChipState createState() => _MultiselectChipState();
}

class _MultiselectChipState extends State<MultiselectChip> {
  List<String> selectedChoices = List();

  _choiceList() {
    List<Widget> choices = List();

    widget.choiceList.forEach((element) {
      choices.add(Container(
        padding: EdgeInsets.all(2.0),
        child: ChoiceChip(
          label: Text(element),
          labelStyle: TextStyle(color: ThemeColors.grey1),
          backgroundColor: ThemeColors.grey8,
          selectedColor: ThemeColors.green7,
          selected: selectedChoices.contains(element),
          onSelected: (selected) {
            setState(() {
              selectedChoices.contains(element)
                  ? selectedChoices.remove(element)
                  : selectedChoices.add(element);
              widget.onSelectedChanged(selectedChoices);
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
