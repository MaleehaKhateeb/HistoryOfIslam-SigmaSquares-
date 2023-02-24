import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:islamic_app/Screens/Home.dart';
import 'package:islamic_app/Screens/Main.dart';
import 'package:islamic_app/Screens/Menu.dart';
class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final zoomDrawerController = ZoomDrawerController();
 
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      //Side Drawer
      controller: zoomDrawerController,
      menuScreen:  Menu(),
      mainScreen:  Home(),
      style: DrawerStyle.defaultStyle,
      showShadow: true,
      angle: 0.0,
      borderRadius: 20,
      );

  }
}