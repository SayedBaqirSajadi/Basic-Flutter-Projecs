import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  _State createState() => new _State();
}

class _State extends State<MyApp> with WidgetsBindingObserver {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name Here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[new Text('Add Widget Here')],
        ),
      ),
    );
  }

  void initState() {
    print('*** init State');
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  void dispose() {
    print('*** Dispose');
    super.initState();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('*** Dispose ${state.toString()}');
    switch (state) {
      case AppLifecycleState.inactive:
        print('*** inactive');
        break;
      case AppLifecycleState.paused:
        print('*** Paused');
        break;
      case AppLifecycleState.resumed:
        print('*** Resumed');
        break;
      case AppLifecycleState.detached:
        print('*** Suspending');
        break;
    }
  }
}
