import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  final String title;
  final String routeName;

  HomeItem(this.title, this.routeName);

  @override
  Widget build(BuildContext context) {
    void _onPressed() {
      Navigator.of(context).pushNamed(routeName);
      print('onPressed');
    }

    return new RaisedButton(
      color: Colors.lightBlue,
      child: new Text(
        title,
        style: new TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: _onPressed,
    );
  }
}
