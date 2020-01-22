import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/*
 * SimpleDialog
 */
class ShowSimpleDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Test",
      home: new Scaffold(
        appBar: AppBar(title: Text("Flutter基础===ShowDialog之一SmipleDialog")),
        body: Builder(
          builder: (context) {
            return RaisedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => SimpleDialog(
                          title: Text("SimpleDialog"),
                          backgroundColor: Colors.blue,
                          children: <Widget>[
                            SimpleDialogOption(
                              child: Text("OK"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            SimpleDialogOption(
                              child: Text("Cancel"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            )
                          ],
                        ));
              },
              child: Text("showDialog"),
            );
          },
        ),
      ),
    );
  }
}

/*
 * AlertDialog
 */
class ShowAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Test",
      home: new Scaffold(
        appBar: new AppBar(title: Text("Flutter基础====AlertDialog")),
        body: Builder(
          builder: (context) {
            return RaisedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("AlertDialog"),
                          backgroundColor: Colors.yellow,
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
                                Text("This is a AlertDialog"),
                                Text("add two options")
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            FlatButton(
                              child: Text("OK"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            FlatButton(
                              child: Text("Cancel"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            )
                          ],
                        ));
              },
              child: Text("AlertDialog"),
            );
          },
        ),
      ),
    );
  }
}

/*
 * iOS版的AlertDialog
 */
class CupertinoAlertDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Test",
      home: new Scaffold(
        appBar: new AppBar(title: Text("FlutterDemo基础====iOS版的AlerDialog")),
        body: Builder(
          builder: (context) {
            return RaisedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => CupertinoAlertDialog(
                          title: Text("iOS版的对话框"),
                          content: Text("This is iOS版的对话框 "),
                          actions: <Widget>[
                            CupertinoDialogAction(
                              child: Text("OK"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            CupertinoDialogAction(
                              child: Text("Cancel"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            )
                          ],
                        ));
              },
              child: Text("iOS AlertDialog"),
            );
          },
        ),
      ),
    );
  }
}
