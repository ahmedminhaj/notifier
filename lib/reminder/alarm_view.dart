
import 'package:flutter/material.dart';
import 'package:notifier/components/style_sheet/global.dart';

import 'widgets/custom_button.dart';

class AlarmView extends StatefulWidget {
  final String button1Title, button2Title;
  final button1Onpressed, button2Onpressed;

  AlarmView(
      {this.button1Title,
      this.button2Title,
      this.button1Onpressed,
      this.button2Onpressed});

  @override
  _AlarmViewState createState() => _AlarmViewState();
}

class _AlarmViewState extends State<AlarmView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.fromLTRB(15, 30, 15, 20),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                dark,
                light,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(color: lightdark, blurRadius: 2.0),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Wash hands for 20secs",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 15),
            CustomButton(
              title: widget.button1Title,
              onpressed: widget.button1Onpressed,
            ),
            
            SizedBox(height: 5),
            CustomButton(
              title: widget.button2Title,
              onpressed: widget.button2Onpressed,
            ),
            
          ],
        ),
      ),
    );
  }
}
