import 'package:flutter/material.dart';

class second extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Second'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('This is Second Screen '),
              new RaisedButton(
                  child: new Text('Next'),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/third');
                  })
            ],
          ),
        ),
      ),
    );
  }
}
