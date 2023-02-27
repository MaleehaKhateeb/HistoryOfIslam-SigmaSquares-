import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islamic_app/Bookmain.dart';
import 'package:islamic_app/Screens/Home.dart';
import 'package:islamic_app/Screens/bookmark.dart';
import 'package:islamic_app/Screens/drawer.dart';
import 'package:islamic_app/Screens/login.dart';
import 'package:islamic_app/Screens/more.dart';
import 'package:islamic_app/Screens/pic-data.dart';
import 'package:islamic_app/Screens/prophet.dart';
import 'package:islamic_app/Screens/slidedscreens.dart';
import 'package:islamic_app/services/users_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Menu extends StatefulWidget {

 const Menu({Key? key,}) : super(key: key);

  @override
  State<Menu> createState() => MenuState();
}

class MenuState extends State<Menu> {
  static const String Logoutkey = "Logout";
  @override
  Widget build(BuildContext context) {
    return  Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30)),
            gradient: LinearGradient(colors: [
              Color(0xFF043A39),
              Color.fromARGB(255, 11, 120, 118),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            ),
           
          ),
          child: Column(
            children: [
              SizedBox(height: 230,),
              Container(
                child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );                },
               child: Padding(padding: EdgeInsets.all(15),
               child: Row(
                children: [
                  Expanded(child: Icon(
                    FontAwesomeIcons.houseChimneyUser,
                    size: 20,
                    color:Color(0xFFedb97b),
                  )),
                  Expanded(
                    flex: 3,
                    child:
                     Text("Home",
                     style: TextStyle(
                       fontFamily: "bold",
                      fontSize: 20,
                      color:Color(0xFFedb97b),
                       
                     ),),
                    
                     )
                ],
               ),
               ),
               
              ),
              ),
              Divider(color: Colors.teal,thickness: 2,
              indent: 20,
              height: 2,
             endIndent: 20,),
               Container(
                child: InkWell(
                onTap: () {
                      Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainBooks()),
                );

                },
               child: Padding(padding: EdgeInsets.all(15),
               child: Row(
                children: [
                  Expanded(child: Icon(
                    FontAwesomeIcons.book,
                    size: 20,
                    color: Color(0xFFedb97b),
                  )),
                  Expanded(
                    flex: 3,
                    child:
                     Text("Book",
                     style: TextStyle(
                      fontSize: 20,
                       fontFamily: "bold",
                      color:Color(0xFFedb97b),
                     ),))
                ],
               ),),
              ),
              ),
               Divider(color: Colors.teal,thickness: 2,
              indent: 20,
              height: 2,
             endIndent: 20,),
               Container(
                child: InkWell(
                onTap: () {
                   Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> const prophet()));

                },
               child: Padding(padding: EdgeInsets.all(15),
               child: Row(
                children: [
                  Expanded(child: Icon(
                    FontAwesomeIcons.userLarge,
                    size: 20,
                    color: Color(0xFFedb97b),
                  )),
                  Expanded(
                    flex: 3,
                    child:
                     Text("Prophet",
                     style: TextStyle(
                       fontFamily: "bold",
                      fontSize: 20,
                      color: Color(0xFFedb97b),
                     ),))
                ],
               ),),
              ),
              ),
               Divider(color: Colors.teal,thickness: 2,
              indent: 20,
              height: 2,
             endIndent: 20,),
               Container(
                child: InkWell(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> const moredata()));

                },
               child: Padding(padding: EdgeInsets.all(15),
               child: Row(
                children: [
                  Expanded(child: Icon(
                    FontAwesomeIcons.solidFlag,
                    size: 20,
                    color: Color(0xFFedb97b),
                  )),
                  Expanded(
                    flex: 3,
                    child:
                     Text("Ghazwaat",
                     style: TextStyle(
                       fontFamily: "bold",
                      fontSize: 20,
                      color: Color(0xFFedb97b),
                     ),))
                ],
               ),),
              ),
              ),
               Divider(color: Colors.teal,thickness: 2,
              indent: 20,
              height: 2,
             endIndent: 20,),
               Container(
                child: InkWell(
                onTap: () {
                 Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> const bookmark()));

                },
               child: Padding(padding: EdgeInsets.all(15),
               child: Row(
                children: [
                  Expanded(child: Icon(
                    FontAwesomeIcons.bookBookmark,
                    size: 20,
                    color:Color(0xFFedb97b),
                  )),
                  Expanded(
                    flex: 3,
                    child:
                     Text("Bookmark",
                     style: TextStyle(
                       fontFamily: "bold",
                      fontSize: 20,
                      color: Color(0xFFedb97b),
                     ),))
                ],
               ),),
              ),
              ),
               Divider(color: Colors.teal,thickness: 2,
              indent: 20,
              height: 2,
             endIndent: 20,),
               Container(
                child: InkWell(
                onTap: () {
                  Navigator.push(context,
                   MaterialPageRoute(builder: (context)=> const picdata()));

                },
               child: Padding(padding: EdgeInsets.all(15),
               child: Row(
                children: [
                  Expanded(child: Icon(
                    Icons.more,
                    size: 20,
                    color: Color(0xFFedb97b),
                  )),
                  Expanded(
                    flex: 3,
                    child:
                     Text("More",
                     style: TextStyle(
                       fontFamily: "bold",
                      fontSize: 20,
                      color: Color(0xFFedb97b),
                     ),))
                ],
               ),),
              ),
              ),
              SizedBox(height: 160,),
             
               Container(
                child: InkWell(
                onTap: () async{
                  SharedPreferences pref =await SharedPreferences.getInstance();
                  await UserStorage.removeUser();
         Navigator.push(
                 context,
                MaterialPageRoute(builder: (context) => const login()),);
                
      },
                
               child: Padding(padding: EdgeInsets.all(15),
               child: Row(
                children: [
                  Expanded(child: Icon(
                    FontAwesomeIcons.signOutAlt,
                    size: 20,
                    color:Color(0xFFedb97b),
                  )),
                  Expanded(
                    flex: 3,
                    child:
                     Text("LogOut",
                     style: TextStyle(
                       fontFamily: "bold",
                      fontSize: 20,
                      color: Color(0xFFedb97b),
                     ),))
                ],
               ),),
              ),
              ),
            ]
      ),
        
    
    );
  }
}