import 'dart:ui';

import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return TextDemo();
    // return RichTextDemo();
    return Container(
      // color: Colors.grey[400],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('http://5b0988e595225.cdn.sohucs.com/q_70,c_zoom,w_640/images/20170819/910d2f57a7e44c9fbecdbafc56382a62.jpeg'),
          // fit: BoxFit.cover
          repeat: ImageRepeat.repeatY,
          colorFilter: ColorFilter.mode(Colors.purple.withOpacity(0.6), BlendMode.hardLight)//背景滤镜
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.broken_image,size: 32.0,color: Colors.white,),
            // color: Colors.blue,
            padding: EdgeInsets.all(10.0),
            width: 64.0,
            height: 64.0,
            // margin: EdgeInsets.only(left:20),
            decoration: BoxDecoration(
              color: Colors.deepPurple, //此处的color和其decoration同级的color属性冲突，只能保留其中一个
              // border: Border(
              //   top:BorderSide(
              //     color: Colors.orange,
              //     width: 2.0,
              //     style: BorderStyle.solid
              //   ),
              //   left: BorderSide(
              //     color: Colors.orangeAccent.withOpacity(0.8),
              //     style: BorderStyle.solid
              //   )
              // )
              border: Border.all(
                color:Colors.pink,
                width:2.0,
                style:BorderStyle.solid
              ),
              // borderRadius: BorderRadius.circular(32),
              borderRadius: BorderRadius.only(
                topLeft:Radius.circular(32),
                bottomRight: Radius.circular(32)
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.deepOrange,
                  offset: Offset(8, 5),
                  blurRadius: 10,
                  spreadRadius: 1
                ),
                BoxShadow(
                  color: Colors.deepPurple,
                  offset: Offset(0, 5),
                  blurRadius: 10,
                  spreadRadius: 1
                )
              ],
              // gradient: LinearGradient( //线性渐变
              //   colors: [Colors.white,Colors.purple,Colors.deepPurple],
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight
              // ),
              gradient: RadialGradient( //径向渐变
                colors:[
                  Colors.white,
                  Colors.deepPurple
                ],
                radius: 0.5 //(0 ~ 1)
              )
              
            ),
          )
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  String _title = '出师表';
  String _author = '诸葛亮';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '《$_title》 -- 作者$_author （节选）先帝创业未半而中道崩殂，今天下三分，益州疲弊，此诚危急存亡之秋也。然侍卫之臣不懈于内，忠志之士忘身于外者，盖追先帝之殊遇，欲报之于陛下也。诚宜开张圣听，以光先帝遗德，恢弘志士之气，不宜妄自菲薄，引喻失义，以塞忠谏之路也.',
      textAlign: TextAlign.left,//文字的对齐方式
      style: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: Colors.black87
      ),
      maxLines: 3,//设置最多显示多少行
      overflow: TextOverflow.ellipsis, //设置超出maxlines的部分的显示，ellipsis表示省略号
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
        text: '《出师表》是三国时期蜀汉丞相诸葛亮在北伐中原之前给后主',
        style:TextStyle(
          color: Colors.deepPurple,
          fontSize: 25.0,
          fontWeight:FontWeight.w500,
          fontStyle: FontStyle.italic
        ),
        children: [
          TextSpan(
            text: '-nth0',
            style: TextStyle(
              color: Colors.black38,
              fontSize: 18.0,
              fontWeight: FontWeight.w600
            )
          )
        ]
      ),
    );
  }
}