import 'package:flutter/material.dart';

void main() {}

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

