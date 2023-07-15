part of '../imports/app_imports.dart';

class _WaveCustomPaint extends CustomPainter {
  Color backgroundColor;
  _WaveCustomPaint({required this.backgroundColor});

  @override
  void paint(Canvas canvas, Size size) {
    var painter = Paint()
      ..color = backgroundColor
      ..strokeWidth = 1
      ..style = PaintingStyle.fill;
    var path = Path();
    var height = size.height;
    var width = size.width;

    path.moveTo(0, height / 3 + height / 5);
    var des1 = width / 4;
    var des2 = height / 3 + height / 10; //height/5 /2
    path.quadraticBezierTo(des1, des2, width / 2, height / 3 + height / 10);
    path.quadraticBezierTo(
        width / 2 + width / 2, height / 3 + height / 10, width, height / 3);
    path.lineTo(width, height);
    path.lineTo(0, height);
    path.lineTo(0, height / 3 + height / 5);
    path.close();
    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
