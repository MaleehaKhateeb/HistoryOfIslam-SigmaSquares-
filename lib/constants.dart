import 'package:flutter/material.dart';
class Constants{
  static Color primaryColor = Colors.amber;

// Screen height width must be in double
// so functions are getheight and getwidth

static double getHeight(BuildContext context){
  return MediaQuery.of(context).size.height;
}
static double getWidth(BuildContext context){
  return MediaQuery.of(context).size.width;
}
}