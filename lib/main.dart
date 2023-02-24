import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/Book.dart';
import 'package:islamic_app/Bookmain.dart';
import 'package:islamic_app/Screens/Age.dart';
import 'package:islamic_app/Screens/CreateNewAccount.dart';
import 'package:islamic_app/Screens/Familyofprophets.dart';
import 'package:islamic_app/Screens/LifeofSA.dart';
import 'package:islamic_app/Screens/Main.dart';
import 'package:islamic_app/Screens/bookmark.dart';
import 'package:islamic_app/Screens/emailcheck.dart';
import 'package:islamic_app/Screens/gazwat.dart';
import 'package:islamic_app/Screens/login.dart';
import 'package:islamic_app/Screens/more.dart';
import 'package:islamic_app/Screens/pic-data.dart';
import 'package:islamic_app/Screens/prophet.dart';
import 'package:islamic_app/Screens/prophetdetails.dart';
import 'package:islamic_app/Screens/slidedscreens.dart';
import 'package:islamic_app/services/users_storage.dart';
import 'Screens/ForgotPassword.dart';
import 'Screens/Home.dart';
import 'Screens/ProphetAges.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  UserStorage.initializeUserStorage();
         runApp(const MyApp()
          ) ;
  }
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Remove debug tag
       debugShowCheckedModeBanner: false,

      title: 'Islamic history app',
      theme: ThemeData(
        textTheme: GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
       
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
     
     initialRoute: '/',
     routes: {
      '/':(context) => const  SlidedScreens(),
      '/login' : (context) => const login(),
      '/forgot_password':(context) => const ForgotPassword(),
      '/register':(context) => const CreateNewAccount(),
      '/Main' :(context) => const Main(),
      '/Home':(context) => const Home(),
      '/Emailchk' : ((context) => const emailcheck()),
      '/Pdfbook' :(context) => const pdfbook(),
      '/prophet' :(context) => const prophet(),
      '/pic-data' :(context) => const picdata(),
      '/more' :(context) => const moredata(),
      '/Bookmark' :(context) => const bookmark(),
      '/area' :(context) => const AgeAndSentArea(),
      '/SA' :(context) => const LifeOfMohammadSA(),
      '/family' :(context) => const FamilyOfProphet(),
      '/age' :(context) => const ProphetAges(),
      '/mainbook' :(context) => const MainBooks(),
      '/Pdetails' : (context) => const prophetdetails(),
      '/Gazwaat' :(context) => const Gazwat(),
      '/Drawer' :(context) => const Drawer(),
     },
    );
    
  }
}
 

