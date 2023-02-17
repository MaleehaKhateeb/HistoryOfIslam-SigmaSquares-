import 'package:flutter/material.dart';

import 'Recomendedcards.dart';
import 'Titlewithmorebtn.dart';
import 'header_with_searchbox.dart';
class body extends StatefulWidget {
  const body({Key? key}) : super(key: key);

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Headerwithsearchbox(size: size),
           Positioned(bottom: 10,
          left: 0,
          right: 0,
            child: Container(
              alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 4),
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 4),
            height: 54,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  // offset: Offset(0, 10),
                  blurRadius: 50,
                  color:Colors.tealAccent.withOpacity(0.5),
                )
              ],
              
              border: Border.all(
                color: Colors.teal,
              )
              ),
              child:TextField(
                onChanged: (value)  {},
                decoration: InputDecoration(
                  hintText:"Search",
                  hintStyle: TextStyle(
                    color: Colors.teal.withOpacity(0.5),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: Icon(Icons.search, color: Colors.teal.withOpacity(0.5),)
                ),
              ),
              )
            ),
             Titlewithmorebtn(
              title: "Recomended",
              press: (){},
             ),
             Recomendedcards(),
      ])

              );
           
             
      
        
        
        
  }
}

