import 'package:flutter/material.dart';
import 'package:islamic_app/Widgets/BackgroundImage.dart';
import 'package:photo_view/photo_view.dart';
class AgeAndSentArea extends StatefulWidget {
  const AgeAndSentArea({Key? key}) : super(key: key);

  @override
  State<AgeAndSentArea> createState() => _AgeAndSentAreaState();
}

class _AgeAndSentAreaState extends State<AgeAndSentArea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Text("Prophet's Area & Age Duration",style: TextStyle(
            color: Color(0xFFedb97b),
            fontFamily: "bold",
            fontSize: 25
          ),),
          backgroundColor: Color(0xFF043A39),
          centerTitle: true,
        ),
      body: 
      Container(
          child: PhotoView(
        //Display Image on Screen
      imageProvider: AssetImage("assets/age&sent_area.jpg"),
      ),
        ),
    );
  }
}