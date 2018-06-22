import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfemo/page/base.dart';

class CustomWidget extends StatelessBaseWidget {
  @override
  get subTitle => "CustomWidget";

  @override
  Widget buildBody(BuildContext context) {
    return new CustomPaint(
      painter: new MyPainter(),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = new Paint()
      ..color = Colors.pink
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    var datePaint = new Paint()
      ..color = Colors.black
      ..strokeWidth = 5.0;

    Rect rect = new Rect.fromLTRB(0.0, 0.0, 150.0, 20.0);
    canvas.drawRect(rect, paint);

    paint.color = Colors.amber;
    canvas.drawCircle(new Offset(150.0, 150.0), 100.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
