import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class StatelessBaseWidget extends StatelessWidget {
  final _title = "/page/";

  get subTitle;

  get route => "$_title$subTitle";

  Widget buildBody(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        iconTheme: new IconThemeData(color: Colors.white),
        backgroundColor: Colors.lightBlue,
        title: new Text(
          "$subTitle",
          style: new TextStyle(color: Colors.white),
        ),
      ),
      body: buildBody(context),
    );
  }
}
