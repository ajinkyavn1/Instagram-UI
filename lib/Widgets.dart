//TODO:Implement After Codeimport 'dart:convert';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AllItem{

  final  toptext=Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      "Stories".text.bold.make(),
      Row(
        children: [
          Icon(Icons.play_arrow),
          "Watch All".text.bold.make()
        ],
      )

    ],
  );
  final Stories=Expanded(

      child: Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount:15,
          itemBuilder:(context,index){
            return Stack(
              alignment:Alignment.bottomRight ,
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60 ,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://previews.123rf.com/images/pornpatmalajak/pornpatmalajak1601/pornpatmalajak160100059/51331132-quote-about-love-and-coffee-on-coffee-background-design-with-vintage-style-valentine-s-day-.jpg")
                    )
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 8),
                ),
                index==0?Positioned(
                  right: 10,
                  child:CircleAvatar(
                    backgroundColor: Vx.blue500,
                    radius: 10,
                    child: Icon(Icons.add,size: 14,color: Vx.white,),
                  ),
                ):Container()
              ],
            );

            },
        ),
      )
  );
  final BottomNav=Container(
    height: 50,
    child: BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.home
              )
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search
              )
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.add_box_outlined
              )
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.favorite)
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.account_circle_rounded)
          ),
        ],
      ),
    ),
  );
}
