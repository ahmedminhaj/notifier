import 'package:flutter/material.dart';
import 'package:notifier/components/style_sheet/global.dart';
import 'package:notifier/reminder/home_page.dart';
import 'package:notifier/statistics/covis19_statistics.dart';
import 'package:notifier/views/home_views.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "/reminder": (BuildContext context) => HomePage(),
        "/statistics": (BuildContext context) => Statistics19(),
        //"/alarm": (BuildContext context) => AlarmView(),
      },
      theme: ThemeData(
        primaryColor: dark,
      ),
      home: HomeView(),
    );
  }
}
