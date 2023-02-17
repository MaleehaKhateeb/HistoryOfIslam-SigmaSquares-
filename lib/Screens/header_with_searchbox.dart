import 'package:flutter/material.dart';
class Headerwithsearchbox extends StatelessWidget {
  const Headerwithsearchbox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5,),
      height:size.height*0.3,
      child: Stack(
        children: [
         Container(
              height:size.height*0.5-27,
              decoration: BoxDecoration( color: Color.fromARGB(148, 0, 150, 135),
              boxShadow: [BoxShadow(
                color: Colors.teal.withOpacity(0.2),
                blurRadius: 20,
               
                
              )],
              borderRadius: BorderRadius.only(bottomLeft:Radius.circular(36),
              bottomRight: Radius.circular(36))
              ),
              child: Image(image: AssetImage("assets/Homepic.png")),
            ),
          
        ],
      ));
  }
}