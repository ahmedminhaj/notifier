import 'package:flutter/material.dart';

class ParagraphText extends StatelessWidget {
  final String body;
  final color;
  ParagraphText({
    this.body,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      (body != null) ? body : "",
      textAlign: TextAlign.justify,
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: color != null ? color : Colors.black),
    );
  }
}
