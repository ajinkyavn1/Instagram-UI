//TODO:Implement After Codeimport 'dart:convert';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AllItem{

  final  toptext=Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      "Stories".text.make(),
      Row(
        children: [
          Icon(Icons.play_arrow),
          "Watch".text.make()
        ],
      )

    ],
  );
}