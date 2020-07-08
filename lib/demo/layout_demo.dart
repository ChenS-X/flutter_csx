import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack( //stack组件中，最大的子组件相当于底板
            // alignment: Alignment.bottomLeft,
            // alignment: Alignment.topRight,
            alignment: Alignment.topLeft,
            children: <Widget>[
              SizedBox(
              width: 200,
              height: 300,
              child: Container(
                  // alignment: Alignment.bottomLeft,//相当于Alignment(-1.0,1.0)
                  alignment: Alignment(0.0, -0.6),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ))),
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
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(7, 102, 255, 1.0),
                        Color.fromRGBO(3, 54, 255, 1.0)
                      ]
                    )
                  ))),
                  Positioned( //Positioned组件可以设置其top/left/right/bottomm属性，其child会相当于stack中最大的组件排列
                    top: 20,
                    right: 20,
                    child:Icon(
                    Icons.ac_unit,
                    size: 16.0,
                    color: Colors.white,
                  )
                  ),
                  Positioned( //Positioned组件可以设置其top/left/right/bottomm属性，其child会相当于stack中最大的组件排列
                    top: 55,
                    right: 45,
                    child:Icon(
                    Icons.ac_unit,
                    size: 12.0,
                    color: Colors.white,
                  )
                  ),
                  Positioned( //Positioned组件可以设置其top/left/right/bottomm属性，其child会相当于stack中最大的组件排列
                    top: 90,
                    right: 30,
                    child:Icon(
                    Icons.ac_unit,
                    size: 16.0,
                    color: Colors.white,
                  )
                  ),
                  Positioned( //Positioned组件可以设置其top/left/right/bottomm属性，其child会相当于stack中最大的组件排列
                    top: 120,
                    right: 5,
                    child:Icon(
                    Icons.ac_unit,
                    size: 20.0,
                    color: Colors.white,
                  )
                  ),
                  Positioned( //Positioned组件可以设置其top/left/right/bottomm属性，其child会相当于stack中最大的组件排列
                    top: 160,
                    right:60,
                    child:Icon(
                    Icons.ac_unit,
                    size: 16.0,
                    color: Colors.white,
                  )
                  ),
                  Positioned( //Positioned组件可以设置其top/left/right/bottomm属性，其child会相当于stack中最大的组件排列
                    top: 200,
                    right: 20,
                    child:Icon(
                    Icons.ac_unit,
                    size: 28.0,
                    color: Colors.white,
                  )
                  ),
                  Positioned( //Positioned组件可以设置其top/left/right/bottomm属性，其child会相当于stack中最大的组件排列
                    bottom: 10,
                    right: 10,
                    child:Icon(
                    Icons.ac_unit,
                    size: 16.0,
                    color: Colors.white,
                  )
                  )
            ],
          )
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
