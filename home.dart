import 'package:flutter/material.dart';

class home extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Home'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('This is Home Screen '),
              new RaisedButton(
                  child: new Text('Next'),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/Scond');
                  })
            ],
          ),
        ),
      ),
    );
  }
}
