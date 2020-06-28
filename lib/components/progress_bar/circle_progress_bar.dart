import 'package:flutter/material.dart';

import 'circle_progress_bar_painter.dart';

class CircleProgressBar extends StatefulWidget {
  final Color backgroundColor, foregroundColor;
  final double value;

  const CircleProgressBar({
    this.backgroundColor,
    this.foregroundColor,
    this.value,
  });

  @override
  _CircleProgressBarState createState() => _CircleProgressBarState();
}

class _CircleProgressBarState extends State<CircleProgressBar>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> curve;
  Tween<double> valueTween;
  Tween<Color> foregroundColorTween;

  void didUpdateWidget(CircleProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (this.widget.value != oldWidget.value) {
      double beginValue =
          this.valueTween?.evaluate(this._controller) ?? oldWidget?.value ?? 0;
      this.valueTween = Tween<double>(
        begin: beginValue,
        end: this.widget.value ?? 1,
      );
      this.foregroundColorTween = ColorTween(
        begin: oldWidget?.foregroundColor,
        end: this.widget.foregroundColor,
      );
      this._controller
        ..value = 0
        ..forward();
    }
  }

  @override
  void initState() {
    super.initState();
    this._controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    this._controller.forward();
    this.curve =
        CurvedAnimation(parent: this._controller, curve: Curves.easeInOut);
    this.valueTween = Tween<double>(begin: 0, end: this.widget.value);
  }

  @override
  void dispose() {
    this._controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = this.widget.backgroundColor;
    final foregroundColor = this.widget.foregroundColor;

    return AspectRatio(
      aspectRatio: 1,
      child: AnimatedBuilder(
        animation: this.curve,
        builder: (context, child) {
          final foregroundColor =
              this.foregroundColorTween?.evaluate(this.curve) ??
                  this.widget.foregroundColor;
          return CustomPaint(
            child: child,
            foregroundPainter: CircleProgressBarPainter(
              foregroundColor: foregroundColor,
              backgroundColor: this.widget.backgroundColor,
              percentage: this.valueTween.evaluate(this.curve),
            ),
          );
        },
      ),
    );
  }
}
