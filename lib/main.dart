import 'package:flutter/material.dart';

import 'modle/post.dart';

void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }
}

class Home extends StatelessWidget{

  Widget _listItemBuilder(BuildContext context,int index){
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child:Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height: 16.0,),
          Text(
            posts[index].title,
            style:Theme.of(context).textTheme.bodyText1
          ),
          Text(
            posts[index].author,
            style:Theme.of(context).textTheme.subtitle1
          ),
          SizedBox(height: 16.0,)
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[100],
        appBar:AppBar(
          title: Text("CHENSX"),
          elevation: 0.0,//设置标题栏下部阴影
          centerTitle: true,//设置标题位置
        ),
        body: ListView.builder(
          itemCount:posts.length,
          itemBuilder:_listItemBuilder
        ),
      );
  }
}

class Hello extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:Text(
        "Hello",
        textDirection:TextDirection.ltr,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 40.0,
          fontWeight: FontWeight.bold
        ),
      )
    );
  }
}