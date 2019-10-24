import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'routes/Routes.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        //此处
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        //此处
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
      debugShowCheckedModeBanner:false ,  //去掉debug图标
      // home:Tabs(),   
      initialRoute: '/',     //初始化的时候加载的路由
      onGenerateRoute: onGenerateRoute,
    );
  }
}
