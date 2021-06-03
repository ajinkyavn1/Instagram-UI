import 'package:flutter/material.dart';
import 'package:instaui/Widgets.dart';

class InstaStories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          AllItem().toptext,
          AllItem().Stories
        ],
      ),
    );
  }
}
