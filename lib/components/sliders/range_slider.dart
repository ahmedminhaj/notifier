import 'package:notifier/components/buttons/primary_button.dart';
import 'package:notifier/components/cards/text_format/sub_title.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:notifier/components/style_sheet/shape_file.dart';
import 'package:flutter/material.dart';

class SliderRange extends StatefulWidget {
  @override
  _SliderRangeState createState() => _SliderRangeState();
}

class _SliderRangeState extends State<SliderRange> {
  RangeValues values = RangeValues(1, 100);
  RangeLabels labels = RangeLabels('1', '100');

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Align(
        child: Material(
          elevation: 10.0,
          borderRadius: BorderRadius.circular(10.0),
          shadowColor: ThemeColors.grey2,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5),
                  child: RangeSlider(
                    min: 1,
                    max: 100,
                    values: values,
                    labels: labels,
                    activeColor: ThemeColors.purple9,
                    inactiveColor: ThemeColors.grey6,
                    onChanged: (value) {
                      setState(() {
                        values = value;
                        labels = RangeLabels(
                            "${value.start.toInt().toString()}",
                            "${value.end.toInt().toString()}");
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SubTitle(
                    subtitle: "Start: ${labels.start}    End: ${labels.end}",
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
