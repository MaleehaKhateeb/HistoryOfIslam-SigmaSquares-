import 'package:flutter/material.dart';
import 'package:islamic_app/Screens/prophetdetails.dart';
class MySquare extends StatefulWidget {
  final String name ;
  const MySquare({Key? key, 
  required this.name,
  }) : super(key: key);

  @override
  State<MySquare> createState() => _MySquareState();
}

class _MySquareState extends State<MySquare> {
  

  

  
  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.only(top: 8,left: 15,right: 15,bottom: 8),
          child: Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(colors: [
                Colors.teal, Colors.tealAccent
              ],
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left:10),
                  child: Text(widget.name,
                   style: TextStyle(
                      fontSize: 20,
                      fontFamily: "font2",
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 1, 97, 87),
                     ),),
                ),
                   
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child:Icon(Icons.arrow_forward_ios,size: 17,)
                    ),
                  ],
                ),
               
              ],
            ),
          ),
             );
  }
}