import 'package:flutter/material.dart';

class ListViewProgressIndicator extends StatelessWidget {
  ListViewProgressIndicator(
      {this.strokeWidth = 60.0,
      this.strokeHeight = 6.0,
      this.indicatorWidth,
      this.color = const Color(0xFFF7D744),
      this.backgroudColor = const Color(0xFFEEEEEE),
      this.value = 0.0});

  final double strokeWidth;
  final double strokeHeight;
  final double indicatorWidth;
  final Color color;
  final Color backgroudColor;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: RepaintBoundary(
            child: CustomPaint(
      size: Size(strokeWidth, strokeHeight),
      painter: _ListViewProgressPainter(
          indicatorWidth: indicatorWidth,
          color: color,
          backgroudColor: backgroudColor,
          value: value),
    )));
  }
}

class _ListViewProgressPainter extends CustomPainter {
  _ListViewProgressPainter({
    this.indicatorWidth,
    this.color = const Color(0xFFF7D744),
    this.backgroudColor = const Color(0xFFEEEEEE),
    this.value,
  });
  double indicatorWidth;
  final Color color;
  final Color backgroudColor;
  final double value;

  @override
  void paint(Canvas canvas, Size size) {
    if (value < 0 && value > 1) return;

    indicatorWidth = size.width / 3;
    Paint _paint = Paint()
      ..color = backgroudColor //画笔颜色
      ..strokeCap = StrokeCap.round //画笔笔头类型
      ..isAntiAlias = true //是否开启抗锯齿
      ..style = PaintingStyle.fill //画笔样式，默认为填充
      ..filterQuality = FilterQuality.high //颜色渲染模式的质量
      ..strokeWidth = size.height; //画笔的宽度

    canvas.drawLine(new Offset(0, size.height / 2),
        new Offset(size.width, size.height / 2), _paint);

    _paint.color = color;

    canvas.drawLine(
        new Offset((size.width - indicatorWidth) * value, size.height / 2),
        new Offset((size.width - indicatorWidth) * value + indicatorWidth,
            size.height / 2),
        _paint);
  }

  @override
  bool shouldRepaint(covariant _ListViewProgressPainter oldDelegate) {
    return true;
  }
}
