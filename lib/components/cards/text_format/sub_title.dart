
import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final String subtitle;
  final color;
  SubTitle({this.subtitle, this.color});
  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle != null ? subtitle : "",
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: color != null ? color : Colors.black),
    );
  }
}
