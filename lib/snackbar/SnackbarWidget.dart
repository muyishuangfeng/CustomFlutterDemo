import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/*
 * SnackBar(第一种)包含builder
 */
class SnackBarBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter基础----SnackBar")),
          body: Builder(
            builder: (context) => RaisedButton(
              child: Text("Show SnackBar"),
              onPressed: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("SnackBar"),
                  duration: Duration(seconds: 5),
                  backgroundColor: Colors.blue,
                ));
              },
            ),
          )),
    );
  }
}

/*
 * SnackBar(第二种)不包含builder，builder分离
 */
class SnackBarNoBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter基础----SnackBar")),
          body: SnackBarWidget()),
    );
  }
}

/*
 * Widget
 */
class SnackBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("Show SnackBar"),
      onPressed: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text("SnackBar"),
          duration: Duration(seconds: 5),
          backgroundColor: Colors.blue,
        ));
      },
    );
  }
}
