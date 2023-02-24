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
           fontFamily: "bold",
           color: Color(0xFFedb97b)
        ),),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 2, 46, 45),
      ),
      body:Center(
        child: Text("Comming Soon.......",style: TextStyle(
          fontSize: 30,
          color: Color.fromARGB(255, 2, 46, 45),
        ),),
        
        ),
    );
  }
}