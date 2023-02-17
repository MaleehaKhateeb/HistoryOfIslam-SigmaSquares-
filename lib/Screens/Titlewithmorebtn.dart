import 'package:flutter/material.dart';
class Titlewithmorebtn extends StatelessWidget {
  const Titlewithmorebtn({
    Key? key, required this.press, required this.title,
  }) : super(key: key);
final String title;
final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20 ),
      child: Row(
      children: [
        Titlewithcustomeunderline(text: title),
        Spacer(),
        FlatButton(
        shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.teal,
        onPressed: press,
        child: Text("More",
        style: TextStyle(
          fontFamily: "button",
         color: Colors.white,
        ),))
      ],
           ),
    );
  }
}

          
          
         
  
class Titlewithcustomeunderline extends StatelessWidget {
  const Titlewithcustomeunderline({
    Key? key, required this.text,
    
  }) : super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
     height: 24,
     child: Stack(
       children: [
         Padding(
           padding: const EdgeInsets.only(left: 20 /4),
           child: Text(text, 
           style: TextStyle(
             fontSize: 20,
             color: Colors.black,
             fontWeight: FontWeight.bold, 
           ),),
         ),
         Positioned(
           bottom: 0,
           left: 0,
           right: 0,
           child: Container(
             margin: EdgeInsets.only(right: 20 /4),
             height: 7,
           //  color: Colors.teal.withOpacity(0.2),
           ),
         )
       ],
     ),
    );
  }
}

