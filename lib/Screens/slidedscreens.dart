//SlidedScreen 
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:islamic_app/Screens/Home.dart';
import 'package:islamic_app/Screens/Menu.dart';
import 'package:islamic_app/Screens/drawer.dart';
import 'package:islamic_app/Screens/login.dart';
import 'package:islamic_app/services/user_model.dart';
import 'package:islamic_app/services/users_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
//Class of stateful widget
class SlidedScreens extends StatefulWidget {
  const SlidedScreens({Key? key}) : super(key: key);

  @override
  State<SlidedScreens> createState() => SlidedScreensState();
}
class SlidedScreensState extends State<SlidedScreens> {
  List<Slide> slides = [];
  static const String Loginkey = "Login";
  @override
  void initState() {
    super.initState();
    
//Add slides
    slides.add(
      Slide(
        title: "History of Islam",
        styleTitle:TextStyle(
          fontSize: 35,
          fontFamily: "font1",
          fontWeight: FontWeight.bold,
          color: Color(0xFFedb97b),
          
        ) , 
        description:
            "The History of Islam.Here such the important topics about Islamic history.",
           maxLineTitle: 2, 
           styleDescription: TextStyle(fontSize: 20,
             fontFamily: "bold",
            color: Color(0xFFedb97b)),
        pathImage: "assets/Logo.png",heightImage: 320,
        backgroundColor:Color(0xFF043A39),
      ),
    );
    slides.add(
      Slide(
        title: "Books",styleTitle:TextStyle(
          fontSize: 35,
          fontFamily: "font1",
          fontWeight: FontWeight.bold,
          color:Color(0xFFedb97b),
        ) , 
        description:
            "Here is Islamic History books in                -   ENGLISH -    ",
            styleDescription: TextStyle(
             fontSize: 20,
             fontFamily: "bold",
             color: Color(0xFFedb97b)),
             pathImage: "assets/book.png",heightImage: 300,
             backgroundColor:  Color(0xFF043A39),
      ),
    );
    slides.add(
      Slide(
        title: "Stories",styleTitle:TextStyle(
          fontSize: 35,
          fontFamily: "font1",
          fontWeight: FontWeight.bold,
          color: Color(0xFFedb97b),
        ) , 
        description:
            "Here are some stories of Islamic History",
            styleDescription: TextStyle(fontSize: 20,
             fontFamily: "bold",
            color: Color(0xFFedb97b)),
            pathImage: "assets/sheep .png",
            heightImage: 340,
            backgroundColor:  Color(0xFF043A39),
       
      ),
    );
     slides.add(
      Slide(
        title: "Islamic Wars",
          styleTitle:TextStyle(
          fontSize: 35,
          fontFamily: "font1",
          fontWeight: FontWeight.bold,
          color: Color(0xFFedb97b),
        ) , 
        description:
            "The details of Islamic wars",
            styleDescription: TextStyle(
            fontSize: 20,
            fontFamily: "bold",
            color: Color(0xFFedb97b)),
            pathImage: "assets/sword.png",
            heightImage: 300,
            backgroundColor:  Color(0xFF043A39),
      ),
    );
     slides.add(
      Slide(
        title: "Prophet's life"
        ,styleTitle:TextStyle(
          fontSize: 35,
          fontFamily: "font1",
          fontWeight: FontWeight.bold,
          color: Color(0xFFedb97b),
        ) , 
        description:
            "The details of Prophet's life",
            styleDescription: TextStyle(fontSize: 20,
            fontFamily: "bold",
            color: Color(0xFFedb97b)),
        pathImage: "assets/pro.jpg",heightImage: 300,
        backgroundColor:    Color(0xFF043A39),
      ),
    );
      
  }

  void onDonePress()
   async 
  {
// press on done button then chk if user login 
// then go to main screen 
//otherwise show login screen 
//Using SharedPreferences
    var shared_pr = await SharedPreferences.getInstance();
    var logedin = shared_pr.getBool(Loginkey);
    //If user login 
    if(logedin!=null){
      if(logedin){
        //If user login then go to main screen 
          Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const MyDrawer()),);
    
        }
        //otherwise go to login screen 
      else{
         Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const login()),);
      }
    }
       //otherwise go to login screen 
    else{
       Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const login()),);
    }
    
 
    print("End of slides");
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: IntroSlider(
            slides: slides,
            onDonePress: onDonePress,
            )
    ) ;
  }
}
