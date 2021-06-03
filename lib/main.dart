import 'package:flutter/material.dart';
import 'package:instaui/InstaHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme: IconThemeData(color: Colors.black),
        textTheme: TextTheme(title: TextStyle(color: Colors.black)),
         primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black))
      ),
      home:instaHome(),
    );






  }
}
