import 'package:flutter/material.dart';

/*
 * showAboutDialog
 */
class ShowAboutDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter基础===ShowAboutDialog")),
        body: Builder(
          builder: (context) => RaisedButton(
            onPressed: () {
              showAboutDialog(
                  context: context,
                  applicationName: "Flutter UI Widget===对话框",
                  applicationIcon: Image.asset(
                    "images/test.png",
                    fit: BoxFit.cover,
                  ),
                  applicationVersion: "1.0.0");
            },
            child: Text("showAboutDialog"),
          ),
        ),
      ),
    );
  }
}
