import 'package:notifier/components/cards/text_format/button_text.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';

class BasicDropdown extends StatefulWidget {
  final List options;

  const BasicDropdown({ this.options});
  @override
  _BasicDropdownState createState() => _BasicDropdownState();
}

class _BasicDropdownState extends State<BasicDropdown> {
  
  var _selectedOption;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
      ),
      child: Center(
        child: DropdownButton(
          isExpanded: true,
          hint: ButtonText(
            buttonText: "Select duration",
            textColor: ThemeColors.grey8,
            buttonFontSize: 20.0,
          ),
          value: _selectedOption,
          onChanged: (value) {
            setState(() {
              _selectedOption = value;
            });
          },
          items: widget.options.map((option) {
            return DropdownMenuItem(
              child: ButtonText(
                buttonText: option,
                buttonFontSize: 16.0,
                textColor: ThemeColors.grey8,
              ),
              value: option,
            );
          }).toList(),
        ),
      ),
    );
  }
}
