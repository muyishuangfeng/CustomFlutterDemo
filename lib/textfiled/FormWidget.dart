import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

class FormWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormState();
  }
}

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
                    print(_userGender);
                    print(_userName);
                    print(_userPass);
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
