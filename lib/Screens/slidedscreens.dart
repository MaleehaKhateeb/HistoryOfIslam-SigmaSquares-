import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:islamic_app/Screens/Home.dart';
import 'package:islamic_app/Screens/Menu.dart';
import 'package:islamic_app/Screens/drawer.dart';
import 'package:islamic_app/Screens/login.dart';
import 'package:islamic_app/services/user_model.dart';
import 'package:islamic_app/services/users_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

    slides.add(
      Slide(
        title: "History of Islam",styleTitle:TextStyle(
          fontSize: 35,
          fontFamily: "font1",
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.white,
        ) , 
        description:
            "The History of Islam.Here such the important topics about Islamic history.",
           maxLineTitle: 2, styleDescription: TextStyle(fontSize: 20,
             fontFamily: "font1",
            color: Colors.white,
            fontStyle: FontStyle.italic),
        pathImage: "assets/Logo.png",heightImage: 320,
        backgroundColor: Color.fromARGB(255, 1, 49, 45),
      ),
    );
    slides.add(
      Slide(
        title: "Books",styleTitle:TextStyle(
          fontSize: 35,
          fontFamily: "font1",
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.white,
        ) , 
        description:
            "Here is Islamic History books in                -   ENGLISH -    ",
            styleDescription: TextStyle(fontSize: 20,
             fontFamily: "font1",
            color: Colors.white,
            fontStyle: FontStyle.italic),
        pathImage: "assets/Kitab.png",heightImage: 300,
        backgroundColor:  Color.fromARGB(255, 1, 61, 55),
      ),
    );
    slides.add(
      Slide(
        title: "Stories",styleTitle:TextStyle(
          fontSize: 35,
          fontFamily: "font1",
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.white,
        ) , 
        description:
            "Here are some stories of Islamic History",
            styleDescription: TextStyle(fontSize: 20,
             fontFamily: "font1",
            color: Colors.white,
            fontStyle: FontStyle.italic),
        pathImage: "assets/Sheep.png", heightImage: 340,
        backgroundColor:  Color.fromARGB(195, 1, 107, 96),
      ),
    );
     slides.add(
      Slide(
        title: "Islamic Wars",styleTitle:TextStyle(
          fontSize: 35,
          fontFamily: "font1",
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.white,
        ) , 
        description:
            "The details of Islamic wars",
            styleDescription: TextStyle(fontSize: 20,
             fontFamily: "font1",
            color: Colors.white,
            fontStyle: FontStyle.italic),
        pathImage: "assets/Sword.png",heightImage: 300,
        backgroundColor:  Color.fromARGB(250, 1, 92, 83),
      ),
    );
     slides.add(
      Slide(
        title: "Prophet's life",styleTitle:TextStyle(
          fontSize: 35,
          fontFamily: "font1",
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.white,
        ) , 
        description:
            "The details of Prophet's life",
            styleDescription: TextStyle(fontSize: 20,
            fontFamily: "font1",
            color: Colors.white,
            fontStyle: FontStyle.italic),
        pathImage: "assets/pro.jpg",heightImage: 300,
        backgroundColor:  Color.fromARGB(255, 1, 100, 90),
      ),
    );
      
  }

  void onDonePress()
   async 
  {
    //  Navigator.pushReplacement(
    // context,
    // MaterialPageRoute(builder: (context) => const login()),);

    var shared_pr = await SharedPreferences.getInstance();
    var logedin = shared_pr.getBool(Loginkey);
    if(logedin!=null){
      if(logedin){
        // if (UserStorage.loggedinUserData != null) {
          Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const MyDrawer()),);
    // } 
        }
      else{
         Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const login()),);
      }
    }else{
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
        onDonePress: onDonePress,)
    ) ;
  }
}
