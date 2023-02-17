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
        title: Text("Ghazwaat"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body:Center(
        child: Text("Comming Soon.......",style: TextStyle(
          fontSize: 30,
          color: Colors.teal,
        ),),
        
        ),
    );
  }
}