import 'package:flutter/material.dart';
import 'package:list_app/screen1.dart';
import 'package:list_app/screen2.dart';
import 'package:list_app/screen3.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: Screen1()
      ),
      routes: <String, WidgetBuilder>{
        '/screen1': (BuildContext context) => Screen1(),
        '/screen2': (BuildContext context) => Screen2(),
        '/screen3': (BuildContext context) => Screen3(),
      },
    );
  }
}