
import 'package:islamic_app/Screens/login.dart';
import 'package:islamic_app/Screens/ForgotPassword.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/Widgets/Colors.dart';
class Buttons extends StatefulWidget {
  final VoidCallback onTap;
  final String buttontext;
  
  const Buttons({Key? key,
  required this.buttontext,
  required this.onTap,
  }) : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(100)),
        ),
        padding: EdgeInsets.all(20),
        child: Text(widget.buttontext,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Lato",
          color: dark,
          fontSize: 27,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}