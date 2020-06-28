import 'package:notifier/components/buttons/primary_button.dart';
import 'package:notifier/components/cards/text_format/title_text.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:notifier/components/style_sheet/shape_file.dart';
import 'package:flutter/material.dart';

class BasicSlider extends StatefulWidget {
  @override
  _BasicSliderState createState() => _BasicSliderState();
}

class _BasicSliderState extends State<BasicSlider> {
  var sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Material(
        color: Colors.white,
        elevation: 14.0,
        borderRadius: BorderRadius.circular(10.0),
        shadowColor: ThemeColors.grey4,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Slider(
                    min: 0.0,
                    max: 100.0,
                    activeColor: ThemeColors.purple9,
                    inactiveColor: ThemeColors.grey6,
                    value: sliderValue,
                    onChanged: (newValue) {
                      setState(
                        () {
                          sliderValue = newValue;
                        },
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Container(
                  child: TitleText(
                    title: "volume: ${sliderValue.toInt()}",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: PrimaryButton(
                  buttonText: "Set",
                  color: Colors.cyan[900],
                  buttonShape: ShapeStyle.rectanguler,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
