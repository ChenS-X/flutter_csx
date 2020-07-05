import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: Text("CHENSX"),
          elevation: 0.0,//设置标题栏下部阴影
          centerTitle: true,//设置标题位置
        ),
        body: Hello(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }
}

class Hello extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:Text(
        "Hello",
        textDirection:TextDirection.ltr,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 40.0,
          fontWeight: FontWeight.bold
        ),
      )
    );
  }
}