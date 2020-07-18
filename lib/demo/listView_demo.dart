import 'package:flutter/material.dart';
import '../modle/post.dart';

import './post_show_demo.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    posts[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Text(posts[index].title,
                    style: Theme.of(context).textTheme.bodyText1),
                Text(posts[index].author,
                    style: Theme.of(context).textTheme.subtitle1),
                SizedBox(
                  height: 16.0,
                )
              ],
            ),
            Positioned.fill(
              //positioned.fill创建的positioned组件，不指定padding时默认上下左右为0
              child: Material(
                  color: Colors.transparent, //透明
                  child: InkWell(
                    //点击产生水波纹效果，显示highlightcolor，再splashcolor
                    splashColor: Colors.white.withOpacity(0.3),
                    highlightColor: Colors.white.withOpacity(0.1),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return PostShow(post: posts[index]);
                      }));
                    },
                  )),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: posts.length, itemBuilder: _listItemBuilder);
  }
}
