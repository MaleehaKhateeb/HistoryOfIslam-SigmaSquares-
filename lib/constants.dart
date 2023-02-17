import 'package:flutter/material.dart';
class Constants{
  static Color primaryColor = Colors.amber;

  // screen ki height width double mn hoti ha ok
// to function bnaty hn getHeight and GetWidth ka

// return type double, static ka pata ha kya krta ha? 
//?? btaen na
static double getHeight(BuildContext context){
  return MediaQuery.of(context).size.height;
}
static double getWidth(BuildContext context){
  return MediaQuery.of(context).size.width;
}
}