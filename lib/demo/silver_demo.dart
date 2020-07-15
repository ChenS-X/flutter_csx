import 'package:flutter/material.dart';

import '../modle/post.dart';

class SilverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // title: Text('Nihao'),
            // pinned: true, //默认是false，设置为true，表示固定appbar，不让其滚动隐藏
            floating: true,
            expandedHeight: 178.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('nihao,haha'.toUpperCase(),style: TextStyle(
                letterSpacing: 5.0,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),),
              centerTitle: true,
              background: Image.network('https://cn.bing.com/th?id=OHR.FrederickSound_ZH-CN1838908749_1920x1080.jpg&rf=LaDigue_1920x1080.jpg',fit:BoxFit.cover),
            ),
          ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SilverGridDemo(),
            ),
          )
        ],
      ),
    );
  }
}

class SilverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 0.7 //定义网格的宽高比，默认是1.0
          ),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          child: Image.network(posts[index].imageUrl, fit: BoxFit.cover),
        );
      }, childCount: posts.length),
    );
  }
}
