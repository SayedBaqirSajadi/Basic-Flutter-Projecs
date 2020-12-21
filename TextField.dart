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
  String _text = ' ';

  void onPressed() {
    print('Button Pressed $_text');
  }

  void onPressed2() {
    print(_controller.text);
  }

  void onChange(String value) {
    setState(() {
      _text = value;
    });
  }

  final TextEditingController _controller = new TextEditingController();
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('TextField Demo'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                onChanged: (String value) {
                  onChange(value);
                },
                controller: _controller,
                maxLines: 3,
                autocorrect: true,
                decoration: new InputDecoration(
                    icon: new Icon(Icons.print),
                    hintText: 'Type Somthing here',
                    labelText: 'what is your name'),
              ),
              new RaisedButton(
                  child: new Text('Click Me'),
                  onPressed: () {
                    onPressed2();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
