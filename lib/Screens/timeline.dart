//assets/timeline.png
import'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
class timeline extends StatefulWidget {
  const timeline({Key? key}) : super(key: key);

  @override
  State<timeline> createState() => _timelineState();
}

class _timelineState extends State<timeline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Timeline of the Prophet Muhammad SA",
             style: TextStyle(
              color: Color(0xFFedb97b),
             fontFamily: "bold",
          ),),
          backgroundColor:Color.fromARGB(255, 2, 46, 45),
          centerTitle: true,
        ),
      body: PhotoView(
      imageProvider: AssetImage("assets/timeline.png"),
      
    )
     
       
    );
  }
}