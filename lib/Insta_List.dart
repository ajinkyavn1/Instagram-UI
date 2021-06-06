import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instaui/Insta_Stories.dart';
import 'package:velocity_x/velocity_x.dart';


class InstaList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var deviceSize=MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 15,
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
                padding: const EdgeInsets.fromLTRB(16, 16,8,16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage("https://previews.123rf.com/images/pornpatmalajak/pornpatmalajak1601/pornpatmalajak160100059/51331132-quote-about-love-and-coffee-on-coffee-background-design-with-vintage-style-valentine-s-day-.jpg")
                              )
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        "Ajinkya Narkhede".text.bold.make()
                      ],
                    ),
                    Icon(Icons.more_vert)
                  ],
                ),
              ),
             Flexible(
               fit: FlexFit.loose,
               child:Image.network("https://previews.123rf.com/images/pornpatmalajak/pornpatmalajak1601/pornpatmalajak160100059/51331132-quote-about-love-and-coffee-on-coffee-background-design-with-vintage-style-valentine-s-day-.jpg")

             ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.heart),
                      16.widthBox,
                      Icon(FontAwesomeIcons.comment),
                      16.widthBox,
                      Icon(FontAwesomeIcons.paperPlane)
                    ],
                  ),
                  Icon(FontAwesomeIcons.bookmark)
                ],
              ),
            ),
           Padding(
             padding: EdgeInsets.symmetric(horizontal: 16),
             child: Text("Liked By Priya,sheha and 568231 Others",
               style: TextStyle(
                 fontWeight: FontWeight.bold
               ),
             ),
           ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16,8,16),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage("https://previews.123rf.com/images/pornpatmalajak/pornpatmalajak1601/pornpatmalajak160100059/51331132-quote-about-love-and-coffee-on-coffee-background-design-with-vintage-style-valentine-s-day-.jpg",)
                            )
                        ),
                      ),
                      10.widthBox,
                     Expanded(
                         child:TextField(
                           decoration: InputDecoration(
                             border: InputBorder.none,
                             hintText: "Add Commnet"
                           ),
                         )
                     )
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("5 Days Ago",style: TextStyle(color: Colors.grey),),
                )
          ],
        ),
    );
  }
}
