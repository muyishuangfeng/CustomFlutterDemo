import 'package:flutter/material.dart';

void main() => runApp(RichTextWidget());

/*
 * 富文本
 */
class RichTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter RichDemo",
      theme: ThemeData(primaryColor: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter基础RichDemo----富文本")),
        body: RichText(
          text: TextSpan(children: [
            TextSpan(text: "Hello", style: TextStyle(color: Colors.blue)),
            TextSpan(text: "Flutter", style: TextStyle(color: Colors.red))
          ]),
        ),
      ),
    );
  }
}
