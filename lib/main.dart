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
            Icon(Icons.local_florist, color: Colors.black26, size: 128.0),
            Icon(Icons.change_history, color: Colors.black26, size: 128.0),
            Icon(Icons.directions_bike, color: Colors.black26, size: 128.0)
          ]),
          drawer: Drawer(
              child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Chensx',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                accountEmail: Text('chensx@email.net.cn'),
                currentAccountPicture: CircleAvatar(
                    //CircleAvatar头像类的组件
                    backgroundImage: NetworkImage(
                        'http://5b0988e595225.cdn.sohucs.com/images/20180203/0b7441afb9cb4fe3a6d7a1f7cb556e45.jpeg')),
                decoration: BoxDecoration(
                    color: Colors.yellow[400],
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(//设置背景图片的颜色滤镜（包含两个值，一个是颜色color，一个是混合模式blendmode）
                          Colors.yellow[400].withOpacity(0.6),
                          BlendMode.hardLight
                        ),
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'http://5b0988e595225.cdn.sohucs.com/images/20170915/f9c4f831048844dca4e98675180095b4.jpeg'))),
              ),
              ListTile(
                title: Text('Message', textAlign: TextAlign.right),
                trailing: Icon(Icons.message,
                    size: 22.0, color: Colors.grey[200]), //设置后面的小部件
                onTap: () => Navigator.pop(context), //隐藏这个drawer
              ),
              ListTile(
                title: Text(
                  'Favorite',
                  textAlign: TextAlign.right,
                ),
                trailing:
                    Icon(Icons.favorite, size: 22.0, color: Colors.grey[200]),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Settigs', textAlign: TextAlign.right),
                trailing:
                    Icon(Icons.settings, size: 22.0, color: Colors.grey[200]),
                onTap: () => Navigator.pop(context),
              ),
            ],
          )),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,//当bottomnavigationbaritem >=4 时，底部会变成一片空白，此时需要设置type为fixed
            items:[
              BottomNavigationBarItem(
                icon:Icon(Icons.home),
                title: Text('Home')
              ),
              BottomNavigationBarItem(
                icon:Icon(Icons.directions_subway),
                title: Text('Discovery')
              ),
              BottomNavigationBarItem(
                icon:Icon(Icons.people),
                title: Text('Me')
              ),
              BottomNavigationBarItem(
                icon:Icon(Icons.settings),
                title: Text('Settings')
              )
            ]
          ),
        ));
  }
}
