import 'package:flutter/material.dart';
import 'package:instaui/Insta_Stories.dart';
import 'package:velocity_x/velocity_x.dart';

class InstaList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var deviceSize=MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
        itemBuilder: (context,index)=>index==0
            ?SizedBox(
          height: deviceSize.height* 0.14,
            child: InstaStories()
        )
            :
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
              Padding(
                child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                          image: NetworkImage("https://avatars.githubusercontent.com/u/46190988?v=4")
                      )
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  "Ajinkya Narkhede".text.bold.make()
                ],
            ),
              ),
            Icon(Icons.more_vert)

          ],
        ),
    );
  }
}