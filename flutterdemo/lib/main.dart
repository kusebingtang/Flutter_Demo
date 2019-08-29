import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
            title:Text('Demo Start')
        ),
        body:HomeContent(),
      ),
      theme: ThemeData(
          primarySwatch: Colors.yellow
      ),
    );
  }

}

//
class HomeContent extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child:Container (
          child: Text(
            "Flutter SDK有多个分支，如beta、dev、master、stable，其中stable分支为稳定分支",
            textAlign:TextAlign.center,
              textScaleFactor: 1.8,
              overflow:TextOverflow.visible ,
              maxLines: 4,

            style:TextStyle(
              fontSize: 16.0,
              color:Colors.red,
              fontStyle: FontStyle.italic,
            )
          ),
          height: 300.0,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
                color: Colors.blue,
                width: 2.0
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20)
            )
          ),
            transform:Matrix4.rotationZ(0.0),
          alignment: Alignment.topLeft,
        )
    );
  }
}