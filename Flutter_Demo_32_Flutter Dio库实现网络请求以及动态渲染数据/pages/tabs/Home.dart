import 'package:flutter/material.dart';

import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //请求数据
  _getData() async {
    var apiUrl = "http://192.168.0.5:3000/news";
    Response response = await Dio().get(apiUrl);
    print(response.data);
  }

  //提交数据
  _postData() async {
    Map jsonData = {"username": "哈哈哈", "age": 20};
    var apiUrl = "http://192.168.0.5:3000/dologin";
    Response response = await Dio().post(apiUrl, data: jsonData);
    print(response.data);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text('Dio Get请求数据'),
            onPressed: _getData,
          ),
          SizedBox(height: 20),
          RaisedButton(
            child: Text('Dio Post提交数据'),
            onPressed: _postData,
          ),
          SizedBox(height: 20),
          RaisedButton(
            child: Text('Dio Get请求数据、渲染数据演示demo'),
            onPressed: () {
              Navigator.pushNamed(context, '/http');
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
