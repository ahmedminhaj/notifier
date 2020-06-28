import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String title;
  final onpressed;

  CustomButton({this.title, this.onpressed});

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: widget.onpressed,
      color: Colors.white,
      child: Text(
        widget.title,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w300,
          color: Colors.black,
        ),
      ),
    );
  }
}
