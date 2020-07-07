import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '先帝创业未半而中道崩殂，今天下三分，益州疲弊，此诚危急存亡之秋也。然侍卫之臣不懈于内，忠志之士忘身于外者，盖追先帝之殊遇，欲报之于陛下也。诚宜开张圣听，以光先帝遗德，恢弘志士之气，不宜妄自菲薄，引喻失义，以塞忠谏之路也.',
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