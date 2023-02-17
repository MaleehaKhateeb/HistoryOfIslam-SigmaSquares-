import 'package:flutter/material.dart';
import 'package:islamic_app/Screens/gazwat.dart';
import 'package:islamic_app/Screens/prophet.dart';
import 'package:islamic_app/Screens/prophet/views/prophet_list.dart';
import 'package:slide_to_act/slide_to_act.dart';
class moredata extends StatefulWidget {
  const moredata({Key? key}) : super(key: key);

  @override
  State<moredata> createState() => _moredataState();
}

class _moredataState extends State<moredata> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 159, 144),
        title: Text(" Ghazwaat",
        style: TextStyle(
           fontFamily: "button",
          fontSize: 20,
          fontStyle: FontStyle.italic,
          color: Colors.white,
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
                            gradient: LinearGradient(colors: [Colors.teal , Colors.tealAccent]),
                            image: DecorationImage(image: AssetImage("assets/Sword.png")),
                            borderRadius: BorderRadius.circular(10),
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
                              child: Text("Gazwa-e-Badar",style: TextStyle(
                                 fontFamily: "font2",
                                fontSize: 20,
                                fontStyle: FontStyle.italic,
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
                            outerColor: Color.fromARGB(255, 4, 177, 159),
                            sliderButtonIcon: Icon(Icons.read_more),
                            text: "Slide To Read",
                            textStyle: const TextStyle(
                               fontFamily: "button",
                              fontSize: 20
                            ),
                            onSubmit: () async {
                             await 
                             Navigator.push(context, MaterialPageRoute(builder: (context)=> Gazwat()));
                             setState(() {
                               
                             });
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
                        gradient: LinearGradient(colors: [Colors.teal , Colors.tealAccent]),
                        image: DecorationImage(image: AssetImage("assets/Sword.png")),
                        borderRadius: BorderRadius.circular(10),
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
                          child: Text("Gazwa-e-Uhad",style: TextStyle(
                             fontFamily: "font2",
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
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
                        outerColor: Color.fromARGB(255, 4, 177, 159),
                        sliderButtonIcon: Icon(Icons.read_more),
                        text: "Slide To Read",
                        textStyle: TextStyle(
                           fontFamily: "button",
                          fontSize: 20
                        ),
                        onSubmit: () {
                          
                             Navigator.push(context, MaterialPageRoute(builder: (context)=> Gazwat()));
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
                        gradient: LinearGradient(colors: [Colors.teal , Colors.tealAccent]),
                        image: DecorationImage(image: AssetImage("assets/Sword.png")),
                        borderRadius: BorderRadius.circular(10),
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
                          child: Text("Gazwa-e-Ahzaab",style: TextStyle(
                             fontFamily: "font2",
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
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
                        outerColor: Color.fromARGB(255, 4, 177, 159),
                        sliderButtonIcon: Icon(Icons.read_more),
                        text: "Slide To Read",
                        textStyle: TextStyle(
                           fontFamily: "button",
                          fontSize: 20
                        ),
                        onSubmit: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Gazwat()));
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
                        gradient: LinearGradient(colors: [Colors.teal , Colors.tealAccent]),
                        image: DecorationImage(image: AssetImage("assets/Sword.png")),
                        borderRadius: BorderRadius.circular(10),
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
                          child: Text("Gazwa-e-Khandak",style: TextStyle(
                             fontFamily: "font2",
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
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
                        outerColor: Color.fromARGB(255, 4, 177, 159),
                        sliderButtonIcon: Icon(Icons.read_more),
                        text: "Slide To Read",
                        textStyle: TextStyle(
                          fontSize: 20,
                           fontFamily: "button",
                        ),
                        onSubmit: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Gazwat()));
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