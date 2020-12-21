import 'package:flutter/material.dart';

void main() {
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SampleApp(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);

  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  String textToShow = 'I Like Flutter';
  void _UpdateText() {
    setState(() {
      textToShow = 'Flutter is Awesome';
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SampleApp'),
      ),
      body: Center(
        child: Text(textToShow),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _UpdateText,
        tooltip: 'Update Text',
        child: Icon(Icons.update),
      ),
    );
  }
}
