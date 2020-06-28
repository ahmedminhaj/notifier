import 'package:flutter/material.dart';

class DotTabIndicator extends Decoration {
  final BoxPainter _painter;

  DotTabIndicator({@required Color color, @required double radius})
      : _painter = _DotPainter(color, radius);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class _DotPainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _DotPainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Offset circleOffset = offset +
        Offset(configuration.size.width / 2,
            configuration.size.height - radius - 5);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
