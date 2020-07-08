import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
              width: 200,
              height: 300,
              child: Container(
                  child: Icon(
                    Icons.ac_unit,
                    size: 32.0,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ))),
                  SizedBox(height: 20.0,),
          SizedBox(
              width: 100,
              height: 100,
              child: Container(
                  child: Icon(
                    Icons.brightness_2,
                    size: 32.0,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  )))
        ],
      ),
    );
  }
}

class IconBage extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBage(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
