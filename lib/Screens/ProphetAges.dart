import 'package:flutter/material.dart';

import '../Widgets/BackgroundImage.dart';
import 'package:photo_view/photo_view.dart';
class ProphetAges extends StatefulWidget {
  const ProphetAges({Key? key}) : super(key: key);

  @override
  State<ProphetAges> createState() => _ProphetAgesState();
}

class _ProphetAgesState extends State<ProphetAges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Prophet's Ages",style: TextStyle(
             fontFamily: "button",
          ),),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
      body: PhotoView(
      imageProvider: AssetImage("assets/prophet aages.jpg"),
      
    )
     
       
    );
  }
}