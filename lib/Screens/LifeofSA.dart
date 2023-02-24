import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../Widgets/BackgroundImage.dart';
class LifeOfMohammadSA extends StatefulWidget {
  const LifeOfMohammadSA({Key? key}) : super(key: key);

  @override
  State<LifeOfMohammadSA> createState() => _LifeOfMohammadSAState();
}

class _LifeOfMohammadSAState extends State<LifeOfMohammadSA> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      // margin: EdgeInsets.only(top: 110),
       decoration: BoxDecoration(color: Colors.teal,),
      child:  Scaffold(
        appBar: AppBar(
          title: Text("Muhammad's life",style: TextStyle(
            fontFamily: "bold",
            fontSize: 25,
            color: Color(0xFFedb97b)
          ),),
          backgroundColor: Color(0xFF043A39),
          centerTitle: true,
          
        ),
        body:Container(
          child: PhotoView(
      imageProvider: AssetImage("assets/life_of_SA.jpg"),
      ),
        ),
    ),
    );
  }
}