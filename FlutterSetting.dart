import 'package:flutter/material.dart';
import 'settings.dart';
import 'login.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulBuilder {
  _MyAppState CreateState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _title = 'Please Login';
  Widget _screen;
  login _login;
  settings _settings;
  _MyAppState() {
    _login = new login(onSubmit: () {
      onSubmit();
    });
    _settings = new settings();
    _screen = _settings;
  }
  void onSubmit() {
    print('Login with: ' + _login.username + '' + _login.password);
  }

  void _goHome() {
    print('go Home ');
  }

  void _logout() {
    print('Log out');
  }

  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.home), onPressed: null),
            new IconButton(icon: new Icon(Icons.exit_to_app), onPressed: null),
          ],
        ),
        body: _screen,
      ),
    );
  }
}
