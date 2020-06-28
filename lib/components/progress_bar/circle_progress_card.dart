import 'package:notifier/components/progress_bar/circle_progress_bar.dart';
import 'package:notifier/components/style_sheet/color_file.dart';
import 'package:flutter/material.dart';

class CircleProgressCard extends StatefulWidget {
  @override
  _CircleProgressCardState createState() => _CircleProgressCardState();
}

class _CircleProgressCardState extends State<CircleProgressCard> {
  double progressPercent = 0;
  @override
  Widget build(BuildContext context) {
    Color foreground = ThemeColors.red8;

    if (progressPercent >= 0.8) {
      foreground = ThemeColors.green6;
    } else if (progressPercent >= 0.4) {
      foreground = Colors.yellow[800];
    }
    Color background = foreground.withOpacity(0.2);
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              child: CircleProgressBar(
                backgroundColor: background,
                foregroundColor: foreground,
                value: this.progressPercent,
              ),
              onTap: () {
                final updated =
                    ((this.progressPercent + 0.1).clamp(0.0, 1.0) * 100);
                setState(() {
                  this.progressPercent = updated.round() / 100;
                });
              },
              onDoubleTap: () {
                final updated =
                    ((this.progressPercent - 0.1).clamp(0.0, 1.0) * 100);
                setState(() {
                  this.progressPercent = updated.round() / 100;
                });
              },
            ),
          ),
        ),
        Text("${this.progressPercent * 100}%"),
      ],
    );
  }
}
