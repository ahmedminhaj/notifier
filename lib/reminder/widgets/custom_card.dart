import 'package:flutter/material.dart';

import 'custom_text_style.dart';

class CustomCard extends StatelessWidget {
  final String title;
  CustomCard({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black, blurRadius: 2.0),
          ]),
          child: CustomTextStyle(
            title: title,
          ),
    );
  }
}
