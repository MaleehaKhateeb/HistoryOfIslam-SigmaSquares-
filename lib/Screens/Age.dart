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
          title: Text("Prophet's Area & Age Duration"),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
      body: 
      Container(
          child: PhotoView(
      imageProvider: AssetImage("assets/age&sent_area.jpg"),
      ),
        ),
    );
  }
}