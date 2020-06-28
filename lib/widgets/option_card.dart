import 'package:flutter/material.dart';
import 'package:notifier/components/buttons/custom_icon_button.dart';
import 'package:notifier/components/style_sheet/global.dart';

class OptionCard extends StatelessWidget {
  final String optionTitle;
  final optionIcon;
  final onPressed;
  OptionCard({
    this.optionTitle,
    this.optionIcon,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 20),
      width: 150,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          new BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Text(optionTitle, style: titileStyleLighterBlack),
          Container(
            
            padding: EdgeInsets.only(top: 20),
            height: 100,
            width: 70,
            child: CustomIconButton(
              iconName: optionIcon,
              iconSize: 50.0,
              onpressed: onPressed,
            ),
          ),
        ],
      ),
    );
  }
}
