import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(
    new MaterialApp(home: new MyApp()),
  );
}

class MyApp extends StatefulWidget {
  _State createState() => new _State();
}

enum Answer { Yes, No, Maybe }

class _State extends State<MyApp> {
  String _answer = '';
  void setAnswer(String value) {
    setState(() {
      _answer = value;
    });
  }

  Future<Null> _askuser() async {
    switch (await showDialog(
        context: context,
        child: new SimpleDialog(
          title: new Text('Do you like Flutter?'),
          children: [
            new SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Answer.Yes);
              },
              child: const Text('Yes'),
            ),
            new SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Answer.No);
              },
              child: const Text('No'),
            ),
            new SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, Answer.Maybe);
              },
              child: const Text('Maybe'),
            ),
            new Icon(Icons.home),
          ],
        ))) {
      case Answer.Yes:
        setAnswer('yes');
        break;
      case Answer.No:
        setAnswer('No');
        break;
      case Answer.Maybe:
        setAnswer('Maybe');
        break;
    }
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name Here '),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('Yes Answer ${_answer}'),
            new RaisedButton(
                child: new Text('Click Me'),
                onPressed: () {
                  _askuser();
                })
          ],
        ),
      ),
    );
  }
}
