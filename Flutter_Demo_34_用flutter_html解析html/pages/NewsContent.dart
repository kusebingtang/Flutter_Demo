
import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:dio/dio.dart';

import 'package:flutter_html/flutter_html.dart';


class NewsContent extends StatefulWidget {

  Map arguments;
  NewsContent({Key key,this.arguments}) : super(key: key);

  _NewsContentState createState() => _NewsContentState(this.arguments);
}

class _NewsContentState extends State<NewsContent> {
  Map arguments;
  List _list=[];
  
  _NewsContentState(this.arguments);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(this.arguments);

    this._getData();
  }

  _getData() async{
    var apiUrl="http://www.phonegap100.com/appapi.php?a=getPortalArticle&aid=${this.arguments["aid"]}";
    var response=await Dio().get(apiUrl);     

    setState(() {
      this._list=json.decode(response.data)["result"];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("新闻详情")
      ),
      body:ListView(
        children: <Widget>[
          // Text("${this._list.length>0?this._list[0]["title"]:''}"),
          // Text("${this._list.length>0?this._list[0]["content"]:''}")

              Html(
              data: """
              ${this._list.length>0?this._list[0]["content"]:''}                            
              """,
              //Optional parameters:
              padding: EdgeInsets.all(8.0),
              backgroundColor: Colors.white70,
              defaultTextStyle: TextStyle(fontFamily: 'serif'),
              linkStyle: const TextStyle(
                color: Colors.redAccent,
              ),
              onLinkTap: (url) {
                // open url in a webview
              }
            )
        ],
      )
    );
  }
}