import 'package:flutter/material.dart';

import './demo/listView_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/drawer_demo.dart';

import './demo/basic_demo.dart';
import './demo/layout_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false, //隐藏右上角的debug条
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.3), //高亮颜色
          splashColor: Colors.white54 //点击时，水波纹效果的颜色
          ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3, //配置tabbar个数
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text("CHENSX"),
            elevation: 0.0, //设置标题栏下部阴影
            centerTitle: true, //设置标题位置
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: "search button",
                onPressed: () => debugPrint('Search button is pressed'),
              ),
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.black26,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label, //默认是 .tab 就是整个tab的长度
              tabs: <Widget>[
                Tab(
                    icon: Icon(
                  Icons.local_florist,
                )),
                Tab(
                    icon: Icon(
                  Icons.change_history,
                )),
                Tab(
                    icon: Icon(
                  Icons.directions_bike,
                ))
              ],
            ),
          ),
          body: TabBarView(children: [
            ListViewDemo(),
            //Icon(Icons.local_florist, color: Colors.black26, size: 128.0),
            // Icon(Icons.change_history, color: Colors.black26, size: 128.0),
            BasicDemo(),
            //Icon(Icons.directions_bike, color: Colors.black26, size: 128.0)
            LayoutDemo()
          ]),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomnavigationBarDemo(),
        ));
  }
}
