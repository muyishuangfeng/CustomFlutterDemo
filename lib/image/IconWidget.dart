import 'package:flutter/material.dart';

void main() {}

/*
 * icon
 */
class IconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter基础---Icon")),
        body: Icon(
          Icons.android,
          size: 50,
          color: Colors.yellow,
        ),
      ),
    );
  }
}
