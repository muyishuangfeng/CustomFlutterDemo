import 'package:flutter/material.dart';

/*
 * 输入框
 */
class TextFiledWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter基础-----输入框")),
        body: TextField(
          autofocus: true,
          keyboardType: TextInputType.number,
        ),
      ),
    );
  }
}
