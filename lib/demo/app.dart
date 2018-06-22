import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfemo/demo/demo.dart';
import 'package:flutterfemo/demo/Listdemo.dart';
import 'package:flutterfemo/demo/home.dart';
import 'package:flutterfemo/page/custom_widget.dart';
import 'package:flutterfemo/page/hello_world.dart';

final String HELLO_WORLD = "/demo/hello";
final String LIST_VIEW = "/demo/list";
final String CONTAINER = "/demo/container";
final String IMAGE = "/demo/image";
final String ANIMATION = "/demo/animation";
final String CUSTOM_WIDGET = "/page/custom_widget";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Flutter Demo",
      theme: new ThemeData(
          primaryColor: Colors.white, platform: TargetPlatform.iOS),
      home: new MyHome(),
      routes: <String, WidgetBuilder>{
        HELLO_WORLD: (_) => new HelloWorld(),
        LIST_VIEW: (_) => new ListDemo(),
        CONTAINER: (_) => new ContainerDemo(),
        IMAGE: (_) => new ImageDemo(),
        ANIMATION: (_) => new AnimationDemo(),
        CUSTOM_WIDGET: (_) => new CustomWidget(),
      },
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyState();
  }
}

class MyState extends State<MyHome> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("App Bar"),
      ),
      body: createBody(),
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
        new HomeItem("animation", ANIMATION),
        new HomeItem("CustomWidget", CUSTOM_WIDGET),
      ].map((Widget homeItem) {
        return new Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: homeItem,
        );
      }).toList(),
    );
  }
}
