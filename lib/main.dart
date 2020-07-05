import 'package:flutter/material.dart';

import './demo/listView_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false, //隐藏右上角的debug条
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: "navigation button",
          onPressed: () => debugPrint('navigation button is pressed'),
        ),
        title: Text("CHENSX"),
        elevation: 0.0, //设置标题栏下部阴影
        centerTitle: true, //设置标题位置
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "search button",
            onPressed: () => debugPrint('Search button is pressed'),
          ),
        ],
      ),
      body: null,
    );
  }
}
