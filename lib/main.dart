import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Home(),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: new AppBar(
      title: new Text("View"),
    ),
    body: new Center(
      child: Row(
        children: [
          new ElevatedButton(
              onPressed: () => launch("tel://9960331010"),
              child: new Text("Call me")),
          new ElevatedButton(
              onPressed: () => launch("sms:9960331010"),
              child: new Text("Message me")),
        ],
      ),
    ),
  );
}

void main() {
  runApp(
    new MyApp(),
  );
}
