import 'package:flutter/material.dart';

class BottomnavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomnavigationBarDemoState();
  }
}

class _BottomnavigationBarDemoState extends State<BottomnavigationBarDemo> {

  int _currentIndex = 0;
  void _onTabHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
        type: BottomNavigationBarType
            .fixed, //当bottomnavigationbaritem >=4 时，底部会变成一片空白，此时需要设置type为fixed
        fixedColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: _onTabHandler,//如果不设置ontap属性，bottomnavigationbar是点击无效的
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_subway), title: Text('Discovery')),
          BottomNavigationBarItem(icon: Icon(Icons.people), title: Text('Me')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('Settings'))
        ]);
  }
}
