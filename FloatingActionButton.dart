import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  String _Lastpressed = 'never';
  void _onPressed() {
    print('Pressed');
    setState(() {
      DateTime current = new DateTime.now();
      _Lastpressed = current.toString();
    });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name Here'),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          _onPressed();
        },
        child: new Icon(Icons.timer),
        backgroundColor: Colors.blueAccent,
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[new Text('Last Pressed: ${_Lastpressed}')],
        ),
      ),
    );
  }
}
