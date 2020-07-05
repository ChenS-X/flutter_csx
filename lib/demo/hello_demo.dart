import 'package:flutter/material.dart';
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