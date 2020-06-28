import 'package:flutter/material.dart';

class CustomTextStyle extends StatelessWidget {
  final String title;
  CustomTextStyle({this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w300,
        color: Colors.black,
      ),
    );
  }
}
