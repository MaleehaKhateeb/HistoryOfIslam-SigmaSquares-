import 'package:flutter/material.dart';
import 'package:islamic_app/Book.dart';
import 'package:islamic_app/Screens/Recomendedcards.dart';
import 'package:islamic_app/book2.dart';
import 'package:islamic_app/book3.dart';
import 'package:islamic_app/book4.dart';
import 'package:islamic_app/book5.dart';
import 'package:islamic_app/book6.dart';
class MainBooks extends StatefulWidget {
  const MainBooks({Key? key}) : super(key: key);

  @override
  State<MainBooks> createState() => _MainBooksState();
}

class _MainBooksState extends State<MainBooks> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 46, 45),
        title: Text("Islamic Books",
        style: TextStyle(
          fontFamily: "bold",
          fontSize: 25,
          fontStyle: FontStyle.italic,
          color: Color(0xFFedb97b),
        ),),
        centerTitle: true,
      ),
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RecomendedItems(name:"The Sealed Nectar", 
                        image: "assets/The Sealed Nectar.jpg", Author: "Safi-ur-Rehman",
                        heig : 100,
                        wid: 70,
                         press: (){
                          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const pdfbook()),
  );
                        }),
                        RecomendedItems(name:"Lesson from history", 
                        image: "assets/lesson.jpg", Author: "Dr.Israr Ahmed",
                        heig: 100,
                        wid: 70,
                         press: (){
                           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const book2()),
  );
                        }),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RecomendedItems(name:"Chronology of Islam", 
                        image: "assets/chronology.png", Author: "Alim for Windows",
                        heig: 100,
                        wid: 70,
                         press: (){
                          Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const book3()),
  );
                        }),
                        RecomendedItems(name:"History Of Islam", 
                        image: "assets/history.jpg", Author: "Akbar Shah",
                        heig: 100,
                        wid: 70,
                         press: (){
                           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const book4()),
  );
                        }),
                      ],
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RecomendedItems(name:"History Of Islam", 
                        image: "assets/history.jpg", Author: "Akbar Shah",
                        heig: 100,
                        wid: 70,
                         press: (){
                           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const book5()),
  );
                        }),
                        RecomendedItems(name:"History Of Islam", 
                        image: "assets/history.jpg", Author: "Akbar Shah",
                        heig: 100,
                        wid: 70,
                         press: (){
                           Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const book6()),
  );
                        }),
                      ],
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}