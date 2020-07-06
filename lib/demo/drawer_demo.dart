import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
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
          ));
  }
}