import 'package:notifier/components/buttons/primary_button.dart';
import 'package:notifier/components/cards/text_format/title_text.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:notifier/components/style_sheet/shape_file.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingSlider extends StatefulWidget {
  @override
  _RatingSliderState createState() => _RatingSliderState();
}

class _RatingSliderState extends State<RatingSlider> {
  var sliderValue = 0.0;
  IconData feedbackIcon1 = FontAwesomeIcons.solidStar,
      feedbackIcon2 = FontAwesomeIcons.solidStar,
      feedbackIcon3 = FontAwesomeIcons.solidStar,
      feedbackIcon4 = FontAwesomeIcons.solidStar,
      feedbackIcon5 = FontAwesomeIcons.solidStar;
  Color feedbackColor1 = Colors.grey,
      feedbackColor2 = Colors.grey,
      feedbackColor3 = Colors.grey,
      feedbackColor4 = Colors.grey,
      feedbackColor5 = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Align(
        child: Material(
          color: Colors.white,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(10.0),
          shadowColor: ThemeColors.grey2,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: StarWidget(),
                    ),
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
                      activeColor: Colors.purple[900],
                      inactiveColor: ThemeColors.grey6,
                      onChanged: (newvalue) {
                        setState(() {
                          sliderValue = newvalue;
                          if (sliderValue == 1.0) {
                            feedbackColor1 = Colors.purple[900];
                          } else if (sliderValue < 1.0) {
                            feedbackColor1 = Colors.grey;
                          }
                          if (sliderValue == 2.0) {
                            feedbackColor1 = Colors.purple[900];
                            feedbackColor2 = Colors.purple[900];
                          } else if (sliderValue < 2.0) {
                            feedbackColor2 = Colors.grey;
                          }
                          if (sliderValue == 3.0) {
                            feedbackColor1 = Colors.purple[900];
                            feedbackColor2 = Colors.purple[900];
                            feedbackColor3 = Colors.purple[900];
                          } else if (sliderValue < 3.0) {
                            feedbackColor3 = Colors.grey;
                          }
                          if (sliderValue == 4.0) {
                            feedbackColor1 = Colors.purple[900];
                            feedbackColor2 = Colors.purple[900];
                            feedbackColor3 = Colors.purple[900];
                            feedbackColor4 = Colors.purple[900];
                          } else if (sliderValue < 4.0) {
                            feedbackColor4 = Colors.grey;
                          }
                          if (sliderValue == 5.0) {
                            feedbackColor1 = Colors.purple[900];
                            feedbackColor2 = Colors.purple[900];
                            feedbackColor3 = Colors.purple[900];
                            feedbackColor4 = Colors.purple[900];
                            feedbackColor5 = Colors.purple[900];
                          } else if (sliderValue < 5.0) {
                            feedbackColor5 = Colors.grey;
                          }
                        });
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

  List<Widget> StarWidget() {
    List<Widget> starContainer = new List();
    starContainer.add(
      Container(
        child: Icon(
          feedbackIcon1,
          color: feedbackColor1,
          size: 50.0,
        ),
      ),
    );
    starContainer.add(
      Container(
        child: Icon(
          feedbackIcon2,
          color: feedbackColor2,
          size: 50.0,
        ),
      ),
    );
    starContainer.add(
      Container(
        child: Icon(
          feedbackIcon3,
          color: feedbackColor3,
          size: 50.0,
        ),
      ),
    );
    starContainer.add(
      Container(
        child: Icon(
          feedbackIcon4,
          color: feedbackColor4,
          size: 50.0,
        ),
      ),
    );
    starContainer.add(
      Container(
        child: Icon(
          feedbackIcon5,
          color: feedbackColor5,
          size: 50.0,
        ),
      ),
    );
    return starContainer;
  }
}
