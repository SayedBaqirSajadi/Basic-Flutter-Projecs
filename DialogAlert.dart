import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyAppState createState() => MyAppState();
}

enum MyDialogAction { yes, no, maybe }

class MyAppState extends State<MyApp> {
  String _text = '';

  void _onChange(String value) {
    setState(() {
      _text = value;
    });
  }

  void _dialogResult(MyDialogAction value) {
    print('Yes Selected $value');
    Navigator.pop(context);
  }

  void _showAlert(String value) {
    if (value.isEmpty) return;
    AlertDialog dialog = new AlertDialog(
      content: new Text(
        value,
        style: new TextStyle(fontSize: 30.0),
      ),
      actions: <Widget>[
        new FlatButton(
            onPressed: () {
              _dialogResult(MyDialogAction.yes);
            },
            child: new Text('Yes')),
        new FlatButton(
            onPressed: () {
              _dialogResult(MyDialogAction.no);
            },
            child: new Text('No')),
        new FlatButton(
            onPressed: () {
              _dialogResult(MyDialogAction.maybe);
            },
            child: new Text('Maybe')),
      ],
    );
    showDialog(context: context, child: dialog);
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Alert Dialog Demo'),
      ),
      body: new Container(
        child: new Center(
          child: Column(
            children: <Widget>[
              new TextField(onChanged: (String value) {
                _onChange(value);
              }),
              new RaisedButton(
                  child: new Text('Alert Button'),
                  onPressed: () {
                    _showAlert(_text);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
