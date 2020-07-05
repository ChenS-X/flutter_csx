import 'package:flutter/material.dart';

import './demo/listView_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false, //隐藏右上角的debug条
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,//配置tabbar个数
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: "navigation button",
              onPressed: () => debugPrint('navigation button is pressed'),
            ),
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
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist,)),
                Tab(icon: Icon(Icons.change_history,)),
                Tab(icon: Icon(Icons.directions_bike,))
              ],
            ),
          ),
          body: TabBarView(
            children:[
              Icon(Icons.local_florist,color:Colors.black26,size:128.0),
              Icon(Icons.change_history,color:Colors.black26,size:128.0),
              Icon(Icons.directions_bike,color:Colors.black26,size:128.0)
            ]
          ),
        ));
  }
}
