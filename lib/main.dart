import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:flutter/cupertino.dart';

void main() => runApp(CupertinoAlertDialogWidget());

class MyApp extends StatefulWidget {
  String content;

  MyApp(this.content);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  bool isShowText = true;

  void increment() {
    setState(() {
      widget.content += "d";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Widget -- StatefulWidget及State"),
          ),
          body: Center(
              child: GestureDetector(
            child: isShowText ? Text(widget.content) : null,
            onTap: increment,
          )),
        ));
  }
}

/*
 * Text文本
 */
class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TextDemo",
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
          appBar: AppBar(title: Text("Flutter基础---Text文本")),
          body: Text(
            "Hello Flutter",
            style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                backgroundColor: Colors.yellow),
            textAlign: TextAlign.center,
          )),
    );
  }
}

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

/*
 * 本地图片
 */
class ImageLocalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter基础---image和icon")),
        body: Image.asset(
          "images/test.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

/*
 * 网络图片
 */
class ImageNetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter基础---image和icon")),
        body: Image.asset(
            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1557781801455&di=17f9f2fc3ded4efb7214d2d8314e8426&imgtype=0&src=http%3A%2F%2Fimg2.mukewang.com%2F5b4c075b000198c216000586.jpg"),
      ),
    );
  }
}

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

/*
 * 表单
 */
class FormWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormState();
  }
}

/*
 * 表单状态
 */
class FormState extends State<FormWidget> {
  //key
  final GlobalKey<FormState> _formKey = GlobalKey();

  //性别
  String _userGender = "男";

  //用户名
  String _userName;

  //密码
  String _userPass;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter基础----form表单")),
        body: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              DropdownButtonFormField<String>(
                value: _userGender,
                items: ['男', '女']
                    .map((label) => DropdownMenuItem(
                          child: Text(label),
                          value: label,
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _userGender = value;
                  });
                },
                onSaved: (value) {
                  _userGender = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "用户名"),
                // ignore: missing_return
                validator: (value) {
                  if (value.length <= 5) {
                    return "用户名必须大于5个字符";
                  }
                },
                onSaved: (value) {
                  _userName = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "密码"),
                obscureText: true,
                // ignore: missing_return
                validator: (value) {
                  if (value.length <= 8) {
                    return "密码必须大于8个字符";
                  }
                },
                onSaved: (value) {
                  _userPass = value;
                },
              ),
              RaisedButton(
                child: Text("注册"),
                onPressed: () {
                  if ((_formKey.currentState as prefix0.FormState).validate()) {
                    (_formKey.currentState as prefix0.FormState).save();
                    print("TAG" + _userGender);
                    print("TAG" + _userName);
                    print("TAG" + _userPass);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}


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
