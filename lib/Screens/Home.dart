import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islamic_app/Book.dart';
import 'package:islamic_app/Bookmain.dart';
import 'package:islamic_app/Screens/body.dart';
import 'package:islamic_app/Screens/bookmark.dart';
import 'package:islamic_app/Screens/drawer.dart';
import 'package:islamic_app/Screens/more.dart';
import 'package:islamic_app/Screens/pic-data.dart';
import 'package:islamic_app/Screens/prophet.dart';
import 'package:islamic_app/Screens/prophet/views/prophet_list.dart';
import 'package:islamic_app/Widgets/roundedbutton.dart';
import'package:flutter/src/material/bottom_navigation_bar.dart';
import '../Widgets/Colors.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int activeScreenIndex = 0;
  List<Widget> navScreens =const  [
    Center(child: body(),),
    Center(child: MainBooks()),
    Center(child: prophet()),
    Center(child: moredata()),
    Center(child: bookmark()),
    Center(child: picdata()),
    
   
    
  ];

  PageController pageController = PageController(initialPage: 0);
 
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
       body: PageView.builder(
        itemCount: navScreens.length,
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            
          activeScreenIndex = value;
          });
        },
        itemBuilder:(context, index) {
         return navScreens[activeScreenIndex];
       },),
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 2, 46, 45),
      title: Text("History Of Islam",style: TextStyle(
        fontFamily: "GreatVibes",
        color: Color(0xFFedb97b),
        fontSize: 28
      ),),centerTitle: true,
    elevation:0,
    actions: [
      IconButton(onPressed: (){
        showMaterialModalBottomSheet(
         shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          )
         ),
  context: context,
  builder: (context) => SingleChildScrollView(
    controller: ModalScrollController.of(context),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -15,
              child: Container(
                width: 60,
                height: 7,
                color: Colors.white,
              )),
            Container(
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
             color: Colors.white,
              ),
            child: Column(
              children: [
                Container(
                  child: InkWell(
                  onTap: (){},             
                 child: Padding(padding: EdgeInsets.all(15),
                 
                      child:
                       Text("Maleeha Khateeb",
                       style: TextStyle(
                         fontFamily: "button",
                        fontSize: 20,
                        color:Color.fromARGB(255, 1, 97, 87),
                         
                       ),),
                      ),
                ),
                ),
                Divider(color: Colors.teal,thickness: 2,
                indent: 20,
                height: 2,
               endIndent: 20,),
               Container(
                  child: InkWell(
                  onTap: (){},             
                 child: Padding(padding: EdgeInsets.all(15),
                 
                      child:
                       Text("Manahil",
                       style: TextStyle(
                         fontFamily: "button",
                        fontSize: 20,
                        color:Color.fromARGB(255, 1, 97, 87),
                         
                       ),),
                      ),
                ),
                ),
                 Divider(color: Colors.teal,thickness: 2,
                indent: 20,
                height: 2,
               endIndent: 20,),
               Container(
                  child: InkWell(
                  onTap: (){},             
                 child: Padding(padding: EdgeInsets.all(15),
                 
                      child:
                       Text("Musfirah",
                       style: TextStyle(
                         fontFamily: "button",
                        fontSize: 20,
                        color:Color.fromARGB(255, 1, 97, 87),
                         
                       ),),
                      ),
                ),
                ),]
          ),
          ),]
        ),
    ),
    
);
      }, icon: Icon(FontAwesomeIcons.userLarge),color: Color(0xFFedb97b),),
    ],
    leading: IconButton(onPressed: 
    (){
      ZoomDrawer.of(context)?.toggle();
    }, icon: Icon(FontAwesomeIcons.bars),color: Color(0xFFedb97b),)
      
     ),
     bottomNavigationBar: BottomNavigationBar(
      selectedItemColor:  Color(0xFFedb97b),
      unselectedItemColor: Color.fromARGB(255, 5, 126, 114),
      onTap: (value) {
        setState(() {
          activeScreenIndex = value;
          pageController.jumpToPage(value);
        });
      },
      currentIndex: activeScreenIndex,
      items: [
      BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.houseChimney),label: "Home",backgroundColor: Color.fromARGB(255, 2, 46, 45)),
      BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.book),label: "Books",backgroundColor: Color.fromARGB(255, 2, 46, 45)),
      BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.userLarge),label: "Prophet",backgroundColor:Color.fromARGB(255, 2, 46, 45)),
      BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.solidFlag),label: "About War",backgroundColor: Color.fromARGB(255, 2, 46, 45)),
      BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.bookBookmark),label: "Bookmarks",backgroundColor: Color.fromARGB(255, 2, 46, 45)),
      BottomNavigationBarItem(icon: Icon(Icons.more),label: "More",backgroundColor: Color.fromARGB(255, 2, 46, 45)),
      
     ]),
      );
    
     
  }
}

  
