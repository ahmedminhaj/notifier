import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String title;
  final color;
  TitleText({
    this.title,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      title != null ? title : "",
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300, color: color),
    );
  }
}
