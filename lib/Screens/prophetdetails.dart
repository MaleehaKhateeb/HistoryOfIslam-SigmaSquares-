import'package:flutter/material.dart';
class prophetdetails extends StatefulWidget {
  const prophetdetails({Key? key}) : super(key: key);

  @override
  State<prophetdetails> createState() => _prophetdetailsState();
}

class _prophetdetailsState extends State<prophetdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail",style: TextStyle(
           fontFamily: "button",
        ),),
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