import 'package:flutter/material.dart';
import 'package:notifier/components/style_sheet/global.dart';

class ViewTitle extends StatelessWidget {
  final title;

  ViewTitle({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      constraints: BoxConstraints.expand(height: 150),
      decoration: BoxDecoration(
          gradient: new LinearGradient(
              colors: [dark, light],
              begin: const FractionalOffset(1.0, 1.0),
              end: const FractionalOffset(0.2, 0.2),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50))),
      child: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: titleStyle,
            )
          ],
        ),
      ),
    );
  }
}
