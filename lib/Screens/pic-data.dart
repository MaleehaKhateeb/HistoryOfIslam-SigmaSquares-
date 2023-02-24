import 'package:flutter/material.dart';
import 'package:islamic_app/Screens/Age.dart';
import 'package:islamic_app/Screens/Familyofprophets.dart';
import 'package:islamic_app/Screens/LifeofSA.dart';
import 'package:islamic_app/Screens/ProphetAges.dart';
import 'package:slide_to_act/slide_to_act.dart';
class picdata extends StatefulWidget {
  const picdata({Key? key}) : super(key: key);

  @override
  State<picdata> createState() => _picdataState();
}

class _picdataState extends State<picdata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 46, 45),
        title: Text("Pictorial Informaion",
        style: TextStyle(
          fontFamily: "bold",
          fontSize: 25,
          color: Color(0xFFedb97b)
        ),),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10,right: 8,left: 8),
                  child: Expanded(
                    child: Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Colors.teal , Color.fromARGB(255, 2, 46, 45),]),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("1", style: TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                      
                    ),
                  ),
                ),
             Expanded(
              flex: 3,
               child: Column(
                children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 50,right: 8, bottom: 8),
                       child: Container(
                        height: 50,
                        child: Center(
                          child: Text("Pictorial representation of Muhammad's Life",style: TextStyle(
                            fontSize: 18,
                             fontFamily: "font2",
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),),
                        ),
                    ),
                     ),
                 
                   
             
                Padding(
                   padding: const EdgeInsets.only(top: 0,right: 8, bottom: 10),
                   child: Container(
                    height: 70,
                    child: SlideAction(
                    innerColor: Colors.white,
                    outerColor: Color.fromARGB(255, 2, 46, 45),
                    sliderButtonIcon: Icon(Icons.read_more),
                    text: "Slide To Read",
                    textStyle: TextStyle(
                       fontFamily: "button",
                       color: Color(0xFFedb97b),
                      fontSize: 20
                    ),
                    onSubmit: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> ProphetAges()));
                    },
                    ),
                    
                ),
                 ),
            
            ],
           ),
         )
            ],
           )
        ),
        Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,right: 8,left: 8),
              child: Expanded(
                child: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.teal , Color.fromARGB(255, 2, 46, 45),]),
                    borderRadius: BorderRadius.circular(10),
                  ),
                   child: Center(
                        child: Text("2", style: TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                ),
              ),
            ),
         Expanded(
          flex: 3,
           child: Column(
            children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 50,right: 8, bottom: 8),
                   child: Container(
                    height: 50,
                    child: Center(
                      child: Text("Family Tree of Prophets",style: TextStyle(
                         fontFamily: "font2",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                    ),
                ),
                 ),
             
                Padding(
                   padding: const EdgeInsets.only(top: 0,right: 8, bottom: 10),
                   child: Container(
                    height: 70,
                    child: SlideAction(
                    innerColor: Colors.white,
                    outerColor: Color.fromARGB(255, 2, 46, 45),
                    sliderButtonIcon: Icon(Icons.read_more),
                    text: "Slide To Read",
                    textStyle: TextStyle(
                       fontFamily: "button",
                      fontSize: 20,
                      color: Color(0xFFedb97b)
                    ),
                    onSubmit: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> FamilyOfProphet()));
                    },
                    ),
                    
                ),
                 ),
            
            ],
           ),
         )
            ],
           )
        ),
        Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,right: 8,left: 8),
              child: Expanded(
                child: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.teal , Color.fromARGB(255, 2, 46, 45),]),
                    borderRadius: BorderRadius.circular(10),
                  ),
                   child: Center(
                        child: Text("3", style: TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                ),
              ),
            ),
         Expanded(
          flex: 3,
           child: Column(
            children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 50,right: 8, bottom: 8),
                   child: Container(
                    height: 50,
                    child: Center(
                      child: Text("Prophet's Area & Age Duration",style: TextStyle(
                        fontSize: 19,
                         fontFamily: "font2",
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                    ),
                ),
                 ),
             
                Padding(
                   padding: const EdgeInsets.only(top: 0,right: 8, bottom: 10),
                   child: Container(
                    height: 70,
                    child: SlideAction(
                    innerColor: Colors.white,
                    outerColor: Color.fromARGB(255, 2, 46, 45),
                    sliderButtonIcon: Icon(Icons.read_more),
                    text: "Slide To Read",
                    textStyle: TextStyle(
                       fontFamily: "button",
                      fontSize: 20,
                      color: Color(0xFFedb97b)
                    ),
                    onSubmit: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> AgeAndSentArea()));
                    },
                    ),
                    
                ),
                 ),
            
            ],
           ),
         )
            ],
           )
        ),
        ],
      
        ),
    );
  }
}