import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(       
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            RaisedButton(
              child: Text('跳转到日期演示页面'),
              onPressed: (){
                  Navigator.pushNamed(context, '/datePicker');
              },
            ),
            RaisedButton(
              child: Text('第三方日期插件的使用'),
              onPressed: (){
                  Navigator.pushNamed(context, '/datePickerPub');
              },
            )
        ]
      ),
    );
  }
}
