import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfemo/demo/Demo.dart';
import 'package:flutterfemo/demo/Listdemo.dart';
import 'package:flutterfemo/demo/home.dart';
import 'package:flutterfemo/page/hello_world.dart';

class MyApp extends StatelessWidget {
  static final String HELLO_WORLD = "/demo/hello";
  static final String LIST_VIEW = "/demo/list";
  static final String CONTAINER = "/demo/container";
  static final String IMAGE = "/demo/image";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Flutter Demo",

      theme: new ThemeData(
        primaryColor: Colors.white,
        platform: TargetPlatform.iOS
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("App Bar"),
        ),
        body: createBody(),
      ),
      routes: <String, WidgetBuilder>{
        HELLO_WORLD: (_) => new HelloWorld(),
        LIST_VIEW: (_) => new ListDemo(),
        CONTAINER: (_) => new ContainerDemo(),
        IMAGE: (_) => new ImageDemo(),
      },
    );
  }

  Widget createBody() {
    return new ListView(
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 72.0),
      children: <Widget>[
        new HomeItem("Hello World", HELLO_WORLD),
        new HomeItem("ListView", LIST_VIEW),
        new HomeItem("Container", CONTAINER),
        new HomeItem("Image", IMAGE),
      ].map((Widget homeItem) {
        return new Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: homeItem,
        );
      }).toList(),
    );
  }
}
