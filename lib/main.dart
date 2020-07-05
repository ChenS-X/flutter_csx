import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:Text(
        "Hello",
        textDirection:TextDirection.ltr,
        style: TextStyle(
          color: Colors.yellow,
          fontSize: 40.0,
          fontWeight: FontWeight.bold
        ),
      )
    );
  }
}