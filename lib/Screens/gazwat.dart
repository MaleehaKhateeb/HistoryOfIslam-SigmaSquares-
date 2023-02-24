import 'package:flutter/material.dart';
class Gazwat extends StatefulWidget {
  const Gazwat({Key? key}) : super(key: key);

  @override
  State<Gazwat> createState() => _GazwatState();
}

class _GazwatState extends State<Gazwat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ghazwaat",style: TextStyle(
          color: Color(0xFFedb97b),
          fontFamily: "bold",
          fontSize: 25
        ),),
        centerTitle: true,
        backgroundColor: Color(0xFF043A39),
      ),
      body:Center(
        child: Text("Comming Soon.......",style: TextStyle(
          fontSize: 30,
          color: Color(0xFF043A39),
        ),),
        
        ),
    );
  }
}