import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfemo/page/base.dart';

class HelloWorld extends StatelessBaseWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        iconTheme: new IconThemeData(color: Colors.white), // 设置左边返回箭头颜色
//        backgroundColor: Colors.lightBlue,
//        title: new Text(
//          "Hello World",
//          style: new TextStyle(color: Colors.white),
//        ),
//      ),
//      body: new Container(
//          color: Colors.lightBlue,
//          child: new Center(
//            child: new Text(
//              "Hello World",
//              style: new TextStyle(fontSize: 40.0, color: Colors.white),
//            ),
//          )),
//    );
//  }

  @override
  Widget buildBody(BuildContext context) {
    return new Container(
        color: Colors.lightBlue,
        child: new Center(
          child: new Text(
            "Hello World",
            style: new TextStyle(fontSize: 40.0, color: Colors.white),
          ),
        ));
  }

  // TODO: implement subTitle
  @override
  get subTitle => "HelloWorld";
}
