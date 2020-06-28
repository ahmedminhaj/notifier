import 'package:notifier/components/buttons/primary_button.dart';
import 'package:notifier/components/cards/text_format/sub_title.dart';
import 'package:notifier/components/cards/text_format/title_text.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:notifier/components/style_sheet/shape_file.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeedbackSlider extends StatefulWidget {
  @override
  _FeedbackSliderState createState() => _FeedbackSliderState();
}

class _FeedbackSliderState extends State<FeedbackSlider> {
  var feedbackText = "Below avarage";
  var sliderValue = 0.0;
  IconData feedbackIcon = FontAwesomeIcons.sadTear;
  Color feedbackColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Align(
        child: Material(
          color: Colors.white,
          elevation: 14.0,
          borderRadius: BorderRadius.circular(10.0),
          shadowColor: ThemeColors.grey2,
          child: Container(
            width: MediaQuery.of(context).size.width,
            //height: 400,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Container(
                    child: SubTitle(
                      subtitle: feedbackText,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    child: Icon(feedbackIcon, color: feedbackColor, size: 80),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    child: Slider(
                      min: 0.0,
                      max: 5.0,
                      divisions: 5,
                      value: sliderValue,
                      activeColor: ThemeColors.teal8,
                      inactiveColor: ThemeColors.grey5,
                      onChanged: (newValue) {
                        setState(
                          () {
                            sliderValue = newValue;
                            if (sliderValue >= 0.0 && sliderValue <= 1.0) {
                              feedbackIcon = FontAwesomeIcons.sadTear;
                              feedbackColor = ThemeColors.red6;
                              feedbackText = "Below avarage";
                            }
                            if (sliderValue >= 1.1 && sliderValue <= 2.0) {
                              feedbackIcon = FontAwesomeIcons.frown;
                              feedbackColor = ThemeColors.purple4;
                              feedbackText = "Avarage";
                            }
                            if (sliderValue >= 2.1 && sliderValue <= 3.0) {
                              feedbackIcon = FontAwesomeIcons.meh;
                              feedbackColor = ThemeColors.teal6;
                              feedbackText = "Normal";
                            }
                            if (sliderValue >= 3.1 && sliderValue <= 4.0) {
                              feedbackIcon = FontAwesomeIcons.smile;
                              feedbackColor = ThemeColors.green6;
                              feedbackText = "Good";
                            }
                            if (sliderValue >= 4.1 && sliderValue <= 5.0) {
                              feedbackIcon = FontAwesomeIcons.laugh;
                              feedbackColor = ThemeColors.purple9;
                              feedbackText = "Excellent";
                            }
                          },
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Container(
                    child: TitleText(
                      title: "Rating: $sliderValue",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: PrimaryButton(
                    buttonText: "Submit",
                    color: Colors.cyan[900],
                    buttonShape: ShapeStyle.rectanguler,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
