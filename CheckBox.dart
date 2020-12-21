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
  bool _isChecked = false;
  void onChanged(bool value) {
    setState(() {
      _isChecked = value;
    });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Chechbox Demo'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: Column(
            children: <Widget>[
              new Row(
                children: [
                  new Text('Click it ->'),
                  new Checkbox(
                    value: _isChecked,
                    onChanged: (bool value) {
                      onChanged(value);
                    },
                  ),
                ],
              ),
              new CheckboxListTile(
                title: new Text('Click Me'),
                value: _isChecked,
                activeColor: Colors.red,
                secondary: const Icon(Icons.home),
                onChanged: (bool value) {
                  onChanged(value);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
