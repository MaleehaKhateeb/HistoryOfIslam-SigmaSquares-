//                    Main / Home_screen
//These are some packages which we use to make this screen 
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islamic_app/Book.dart';
import 'package:islamic_app/Screens/Barchart.dart';
import 'package:islamic_app/Screens/ProphetAges.dart';
import 'package:islamic_app/Screens/calendar.dart';
import 'package:islamic_app/Screens/chart.dart';
import 'package:islamic_app/Screens/timeline.dart';
import 'package:islamic_app/Widgets/BackgroundImage.dart';
import 'package:intl/intl.dart';
// Use Stateless Widget to build this screen 
// Because their will be no change in this screen
class body extends StatelessWidget {
  const body({ Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
// To get Size of the screen 
    Size size = MediaQuery.of(context).size;
    return Stack( // Use stack Because making layers in screen
    children: [
      //Background Image of screen
      BackgroundImage(image: "assets/main.png",
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 230,),
             Row(
                children: [
                  Padding(padding: EdgeInsets.only(left:100)),
                    Text(
                //DateFormat("yyyy-mm-dd").format(DateTime.now());
          //Display date format Hours:Minutes of exact time
               DateFormat('kk:mm').format(DateTime.now()),
                style: TextStyle( // Some text styling using Textstyle class 
                  fontSize: 70,
                  color: Color(0xFFedb97b),),
              ),
              Padding(padding: EdgeInsets.all(8)),
              Text(
                //DateFormat("yyyy-mm-dd").format(DateTime.now());
               DateFormat('a').format(DateTime.now()),
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFFedb97b),),
              ),
                ],
              ),
              Center(
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 100)),
                       Text(
                //Display the Day
                          DateFormat("EEEE,").format(DateTime.now()),
                          style: TextStyle(
                            fontSize: 30,
                            color: Color(0xFFedb97b),),
                ),
                //Display the date and month
                Text(
                  DateFormat("dd LLL").format(DateTime.now()),
                  style: TextStyle(
                    fontSize: 28,
                    color: Color(0xFFedb97b),),
                ),
                  ],
                ),
              ),
              SizedBox(height:20,),
              // Making buttons On Home Screen like : 
              //                         Book , Calender , Pictorial rep etc
              Container(
                height: 310,
                width: 290,
                padding: EdgeInsets.only(top: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10)
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Use Inkwell to container clickable
                        InkWell(
                          onTap: (() {
                            //Move to the timeline screen
                            Navigator.push(
                              context, 
                              MaterialPageRoute(builder: (context)=> timeline()));
                          }),
                          child: Container(
                            //height of container
                            height: 100,
                            //width of container
                            width: 140,
                            //Color of container
                            color: Color.fromARGB(255, 2, 46, 45),
                            child: Column(
                              //Use column to display data vertically
                              children: [
                              //padding use for spacing the specific area
                                Padding(
                                  padding: EdgeInsets.only(top: 10)
                                  ),
                              //Use Icon for User information
                                Icon(FontAwesomeIcons.timeline,
                                color: Color(0xFFedb97b),
                                size: 45,),

                             SizedBox(height: 10,),
                                //Text under the icon
                                Text("Timeline of Prophet",style: TextStyle(
                                  color: Color(0xFFedb97b),
                                  //Size of text
                                  fontSize: 15

                                ),),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            //Move to chart screen
                               Navigator.push(
                              context, MaterialPageRoute(builder: (context)=> Chart()));
                          },
                          child: Container(
                            height: 100,
                            width: 140,
                            color: Color.fromARGB(255, 2, 46, 45),
                            child: Column(
                              children: [

                                Padding(
                                  padding: EdgeInsets.only(top: 10)
                                  ),

                                Icon(FontAwesomeIcons.userGroup,
                                color: Color(0xFFedb97b),
                                size: 45,),

                                SizedBox(height: 10,),

                                Text(
                                  "Prophet Ages",
                                  style: TextStyle(
                                  color: Color(0xFFedb97b),
                                  fontSize: 15
                                ),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            //move to english history book
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> pdfbook()));
                          },
                          child: Container(
                            height: 100,
                            width: 140,
                            color: Color.fromARGB(255, 2, 46, 45),
                            child: Column(
                              children: [

                                Padding(
                                  padding: EdgeInsets.only(top: 10)),

                                Icon(
                                  FontAwesomeIcons.bookJournalWhills,
                                color: Color(0xFFedb97b),
                                size: 45,),
                              //For spacing between widgets 
                                SizedBox(height: 10,),

                                Text(
                                  "The Sealed Nectar",
                                  style: TextStyle(
                                  color: Color(0xFFedb97b),
                                  fontSize: 15
                                ),),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            //move to calender screen
                            Navigator.push(context,
                             MaterialPageRoute(builder: 
                             (context)=> calendar()));
          
                          },
                          child: Container(
                            height: 100,
                            width: 140,
                            color: Color.fromARGB(255, 2, 46, 45),
                            child: Column(
                              children: [

                                Padding(
                                  padding: EdgeInsets.only(top: 10)),

                                Icon(
                                  FontAwesomeIcons.calendar,
                                color: Color(0xFFedb97b),
                                size: 45,),

                                SizedBox(height: 10,),

                                Text(
                                  "Calender",
                                  style: TextStyle(
                                  color: Color(0xFFedb97b),
                                  fontSize: 15
                                ),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ],
    );
  }
}