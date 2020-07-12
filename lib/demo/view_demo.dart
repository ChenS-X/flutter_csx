

import 'package:flutter/material.dart';

import '../modle/post.dart';

class ViewDemo extends StatelessWidget{

  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridViewExtendDemo();
  }
}

class GridViewExtendDemo extends StatelessWidget{
  List<Widget> _buildTiles(int length){
    return List.generate(length, (index) => Container(
        color: Colors.grey[300],
        alignment: Alignment(0,0),
        child: Text(
          'item$index',
          style:TextStyle(
            color:Colors.grey[600],
            fontSize:22.0,
            fontWeight:FontWeight.bold
          )
        ),
      ));
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.extent(
      // crossAxisCount:3, //交叉轴上限定的网格个数 ->这个是在 .count中特有的属性
      maxCrossAxisExtent: 200.0, //在gridview.eextent中，表示在交叉轴上格子的最大尺寸
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      scrollDirection: Axis.horizontal,
      children:_buildTiles(100)
    );
  }
}



class GridViewCountDemo extends StatelessWidget{
  List<Widget> _buildTiles(int length){
    return List.generate(length, (index) => Container(
        color: Colors.grey[300],
        alignment: Alignment(0,0),
        child: Text(
          'item$index',
          style:TextStyle(
            color:Colors.grey[600],
            fontSize:22.0,
            fontWeight:FontWeight.bold
          )
        ),
      ));
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount:3, //交叉轴上限定的网格个数
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      // scrollDirection: Axis.horizontal,
      children:_buildTiles(100)
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget{

  Widget _pageItemBuilder(BuildContext context,int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand( //充满整个空间
          child:Image.network(
            posts[index].imageUrl,
            fit:BoxFit.cover
          )
        ),
        Positioned(
          bottom:8.0,
          left:8.0,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style:TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                posts[index].author
              )
            ],
          )
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView.builder(
      itemCount:posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}


class PageViewDemo extends StatelessWidget{
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