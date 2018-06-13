import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        iconTheme: new IconThemeData(color: Colors.white), // 设置左边返回箭头颜色
        backgroundColor: Colors.lightBlue,
        title: new Text(
          "Hello World",
          style: new TextStyle(color: Colors.white),
        ),
      ),
      body: new Container(
          color: Colors.lightBlue,
          child: new Center(
            child: new Text(
              "Hello World",
              style: new TextStyle(fontSize: 40.0, color: Colors.white),
            ),
          )),
    );
  }
}
