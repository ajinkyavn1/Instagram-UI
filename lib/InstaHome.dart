import 'package:flutter/material.dart';
import 'package:instaui/Insta_Body.dart';
import 'package:instaui/Widgets.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:v';

class instaHome extends StatelessWidget {
  final topbar=new AppBar(
    elevation: 1,
    centerTitle: true,
    backgroundColor: Colors.white,
    leading: Icon(Icons.camera_alt,),
    title: SizedBox(
      height:40,
        child: Image.asset("assets/logo/logo.png",)
    ),
    actions: [
      Padding(
        padding:EdgeInsets.only(right: 12),
          child: Icon(Icons.send))
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topbar,
      bottomNavigationBar:AllItem().BottomNav,
      body: InstaBody(),
    );
  }
}
