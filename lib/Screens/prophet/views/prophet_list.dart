import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/Alldata.dart';
import 'package:islamic_app/Screens/prophet/views/profet_details.dart';
import 'package:islamic_app/constants.dart';
import 'dart:convert';

class prophetlist extends StatefulWidget {
  const prophetlist({Key? key}) : super(key: key);

  @override
  State<prophetlist> createState() => _prophetlistState();
}

class _prophetlistState extends State<prophetlist> {
  
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
    width: Constants.getWidth(context),
    height: Constants.getHeight(context),
child: ListView.builder(
  itemCount: PROFETSDATA.length,
  itemBuilder:(context, index) {
  return ListTile(
    title: Text(
      PROFETSDATA[index]['prophet_name'].toString(),
            style: const TextStyle(
              fontSize: 18
        ),),
    trailing: const Icon(
            Icons.arrow_forward_ios_rounded),
    onTap: (){
      Navigator.push(
        context, 
        MaterialPageRoute(
          builder: (context) => 
          ProfetDetails(
            profetData: PROFETSDATA[index])));
    }
    ,
  );
},),
    );
  }
}