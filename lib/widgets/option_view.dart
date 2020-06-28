import 'package:flutter/material.dart';
import 'package:notifier/components/style_sheet/global.dart';
import 'package:notifier/widgets/safety_option.dart';

class OptionView extends StatefulWidget {
  
  @override
  _OptionViewState createState() => _OptionViewState();
}

class _OptionViewState extends State<OptionView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 350),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Text(
              "Prevent CORONA",
              style: titileStyleBlack,
            ),
          ),
          SafetyOptions(),
        ],
      ),
    );
  }
}