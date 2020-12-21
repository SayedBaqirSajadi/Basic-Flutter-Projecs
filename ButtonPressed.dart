import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _title = 'App Bar Demo';
  String _myState = 'No State';
  void _Pressed(String message) {
    setState(() {
      _myState = message;
    });
    print(_myState);
  }

  Widget build(BuildContext context) {
    return new MaterialApp(
      title: _title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.add_alert),
                onPressed: () {
                  _Pressed('Alert Pressed');
                }),
            new IconButton(
                icon: new Icon(Icons.print),
                onPressed: () {
                  _Pressed('Print Pressed');
                }),
            new IconButton(
                icon: new Icon(Icons.people),
                onPressed: () {
                  _Pressed('People Pressed');
                }),
            new RaisedButton(
                child: new Text('Button'),
                onPressed: () {
                  _Pressed('Super Button');
                }),
          ],
        ),
        body: new Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: new Text(_myState),
          ),
        ),
      ),
    );
  }
}
