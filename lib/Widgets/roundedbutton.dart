//Widget of Button using in app

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:islamic_app/Screens/CreateNewAccount.dart';
import 'package:islamic_app/Screens/Main.dart';
import 'package:islamic_app/Screens/Menu.dart';
import 'package:islamic_app/Screens/drawer.dart';
import 'package:islamic_app/Screens/slidedscreens.dart';
import 'package:islamic_app/Widgets/Button.dart';
import 'package:islamic_app/Screens/login.dart';
import 'package:islamic_app/services/user_model.dart';
import 'package:islamic_app/services/users_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Button.dart';
class RoundedButton extends StatefulWidget {
  const RoundedButton({
    Key? key,
  }) : super(key: key);

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
        height: size.height*0.09,
        width: size.width*0.9,
        decoration: BoxDecoration(borderRadius:BorderRadius.circular(16),
        
        ),
        child: Buttons(
          buttontext: "Login", 
          onTap: ()async{
          //var shared_pr = await SharedPreferences.getInstance();
          //when user click on ogin button 
          //then chk user data is in UserModel 
           List<UserModel?> allusers = await UserStorage.getAllUsersData();
            print(allusers);
            bool loginSuccess = false;
            // if (email_controller== null &&
            // pwd_controller == null) {
            //    showDialog(context: context, builder: (context){
            //         return Container(
            //           child: AlertDialog(
            //             title: Text("Enter you Email and Password"),
            //             actions: [
            //               TextButton(onPressed: (){
            //                 Navigator.pop(context);
            //               }, child: Text("OK")),
            //             ],
            //           ),
            //         );
            //           });
            // } else {
              
            // }
            for (var element in allusers) {
              if (element?.email == email_controller.text.toString()
              &&
              element?.password == pwd_controller.text.toString()) {
                loginSuccess = true;
                //Then set data according to the user model
                UserStorage.setUserData(element!);
                //break;
                //shared_pr.setBool(SlidedScreensState.Loginkey, true);
                
              }
            }
            if(loginSuccess)
            {
              //Tag display when user pass correct display and navigat to the home screen 
              ScaffoldMessenger.of(context).
              showSnackBar(const SnackBar(backgroundColor: Colors.green, content: Text("Login Success")));
                 Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => const MyDrawer()),);
            }
            else{
              //tag Display when user pass in correct details
              ScaffoldMessenger.of(context).
              showSnackBar(const SnackBar(backgroundColor: Colors.red, content: Text("Incorrect details")));
            }
         
      
  })
       
      
    );
  }
}
