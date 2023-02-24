import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../Widgets/BackgroundImage.dart';
class FamilyOfProphet extends StatefulWidget {
  const FamilyOfProphet({Key? key}) : super(key: key);

  @override
  State<FamilyOfProphet> createState() => _FamilyOfProphetState();
}

class _FamilyOfProphetState extends State<FamilyOfProphet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Text("Family Tree of Prophets",
          style: TextStyle(
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
      imageProvider: AssetImage("assets/familytreeofprophets.jpg"),
      ),
        ),
    );
  }
}