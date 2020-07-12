import 'package:flutter/material.dart';

class ViewDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      // pageSnapping: false, //默认为true，就是滑动到超过一半之后，自动滑动的效果
      // reverse: true, //倒置，会将3变成1
      // scrollDirection: Axis.vertical, //滚动的方向
      onPageChanged: (currentPage)=>debugPrint('Page:$currentPage'), //滑动触发事件
      controller: PageController(
        // initialPage: 1, //初始显示的页面下标
        // viewportFraction: 0.85 //视图占的大小比例，以运动方向为标准
        // keepPage: true
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0,0.0),
          child: Text(
            "ONE",
            style:TextStyle(
              color:Colors.white,
              fontSize:32.0,
              fontWeight:FontWeight.bold
            )
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0,0.0),
          child: Text(
            "TWO",
            style:TextStyle(
              color:Colors.white,
              fontSize:32.0,
              fontWeight:FontWeight.bold
            )
          ),
        ),Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0,0.0),
          child: Text(
            "THREE",
            style:TextStyle(
              color:Colors.white,
              fontSize:32.0,
              fontWeight:FontWeight.bold
            )
          ),
        )
      ],
    );
  }
}