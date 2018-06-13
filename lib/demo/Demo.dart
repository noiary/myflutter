import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 练习Container
/// http://www.onlyloveyd.cn/article/18
class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Container(
        child: new Text(
          "hello",
          style: new TextStyle(fontSize: 40.0, color: Colors.white),
        ),
        color: Colors.lightBlue,
      ),
      alignment: Alignment.center,
      decoration: new BoxDecoration(
          gradient: const RadialGradient(
              colors: [Colors.lightBlue, Colors.greenAccent, Colors.purple])),
      foregroundDecoration: new BoxDecoration(
          border: new Border.all(
              color: Colors.redAccent, width: 10.0, style: BorderStyle.solid)),
//            width: 300.0,
//            height: 300.0,
      padding: new EdgeInsets.all(20.0),
      margin: new EdgeInsets.all(20.0),
//            constraints: new BoxConstraints.loose(new Size(250.0, 250.0)),
      transform: new Matrix4.rotationZ(0.1),
    );
  }
}

// 练习Image
/// https://blog.csdn.net/poorkick/article/details/80458707
class ImageDemo extends StatelessWidget {
  static const IMAGE_URL =
      "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1528486423005&di=5b3e6b7f91cfff07914c02d25d8547ef&imgtype=0&src=http%3A%2F%2Fcastle.womany.net%2Fimages%2Fcontent%2Fpictures%2F46703%2Fcontent_womany_10929042_10152685754007734_3289641656569206170_o_1467875398-9274-8173.jpg";

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.white,
      child: new Image.network(
        IMAGE_URL,
        width: 300.0,
        height: 300.0,
        fit: BoxFit.contain,
        color: Colors.greenAccent,
        colorBlendMode: BlendMode.colorBurn,
        alignment: Alignment.center,
//      repeat: ImageRepeat.noRepeat,
      ),
    );
  }
}
