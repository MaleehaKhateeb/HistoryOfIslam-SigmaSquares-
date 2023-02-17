import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
class bookmark extends StatefulWidget {
  const bookmark({Key? key}) : super(key: key);

  @override
  State<bookmark> createState() => _bookmarkState();
}

class _bookmarkState extends State<bookmark> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text("Bookmarks",style: TextStyle(
          fontFamily: "button",
          fontSize: 20
        ),),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Comming soon" , style: TextStyle(
            fontSize: 30,
            color: Colors.teal,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      )
     );
  }
}