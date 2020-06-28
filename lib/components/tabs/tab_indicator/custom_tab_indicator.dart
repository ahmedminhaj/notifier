
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:notifier/components/style_sheet/color_file.dart';

class CustomTabIndicator extends Decoration {
  @override
  _CustomPainter createBoxPainter([VoidCallback onChanged]) {
    return _CustomPainter(this, onChanged);
  }
}

class _CustomPainter extends BoxPainter {
  final CustomTabIndicator decorator;
  _CustomPainter(this.decorator, onChanged)
      : assert(decorator != null),
        super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);
    double indicatorHeight = 25;
    //final Rect indicator = offset & configuration.size;
    //final Rect indicator = Offset(offset.dx, (configuration.size.height/2) - indicatorHeight/2) & Size(configuration.size.width, indicatorHeight);
    final Rect indicator = Offset(offset.dx + configuration.size.width/2.6, (configuration.size.height) - indicatorHeight/7) & Size(configuration.size.width/4, indicatorHeight/5);

    final Paint paint = Paint();
    paint.color = ThemeColors.teal6;
    paint.style = PaintingStyle.fill;
    canvas.drawRRect(
        RRect.fromRectAndRadius(indicator, Radius.circular(15.0)), paint);
  }
}
