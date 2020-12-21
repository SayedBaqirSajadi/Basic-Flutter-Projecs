import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  String _text = '';
  final GlobalKey<ScaffoldState> _scaffoldstate =
      new GlobalKey<ScaffoldState>();

  void _onChange(String value) {
    setState(() {
      _text = value;
    });
  }

  void _showSnackBar(String value) {
    if (value.isEmpty) return;
    _scaffoldstate.currentState.showSnackBar(
      new SnackBar(
        content: new Text(value),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldstate,
      appBar: new AppBar(
        title: new Text('SnakBar Demo'),
      ),
      body: new Container(
        child: Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                onChanged: (String value) {
                  _onChange(value);
                },
              ),
              new RaisedButton(
                onPressed: () {
                  _showSnackBar(_text);
                },
                child: new Text('SnackBar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
