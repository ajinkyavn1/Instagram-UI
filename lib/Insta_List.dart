import 'package:flutter/material.dart';
import 'package:instaui/Insta_Stories.dart';

class InstaList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
        itemBuilder: (context,index)=>index==0?InstaStories():Column(),
    );
  }
}