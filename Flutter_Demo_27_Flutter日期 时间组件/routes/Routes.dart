import 'package:flutter/material.dart';
import '../pages/Tabs.dart';
import '../pages/DatePicker.dart';
import '../pages/DatePickerPub.dart';


//配置路由
final routes={
      '/':(context)=>Tabs(),
      '/datePicker':(context)=>DatePickerDemo(),     
      '/datePickerPub':(context)=>DatePickerPubDemo(),          
};

//固定写法
// ignore: top_level_function_literal_block
var onGenerateRoute=(RouteSettings settings) {
      // 统一处理
      final String name = settings.name; 
      final Function pageContentBuilder = routes[name];
      if (pageContentBuilder != null) {
        if (settings.arguments != null) {
          final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context, arguments: settings.arguments));
          return route;
        }else{
            final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context));
            return route;
        }
      }
};