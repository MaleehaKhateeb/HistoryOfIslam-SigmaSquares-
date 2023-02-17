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
          title: Text("Family Tree of Prophets"),
          backgroundColor: Colors.teal,
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