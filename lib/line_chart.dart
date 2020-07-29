import 'package:flutter/material.dart';

class LineChart extends StatelessWidget {
  final double width;
  final double height;

  const LineChart(this.width, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreenAccent,
      width: width,
      height: height,
      child: CustomPaint(
        painter: MyPainter(),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke
      ..isAntiAlias = true;
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width/10, size.height/5);
    path.lineTo(size.width/7, size.height/1.5);
    path.lineTo(size.width/4, size.height/4);
    path.lineTo(size.width/3, size.height/1.5);
    path.lineTo(size.width/2, size.height/4);
    path.lineTo(size.width-10, size.height-5);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
