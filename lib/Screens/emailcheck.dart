import'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islamic_app/Screens/drawer.dart';
import 'package:islamic_app/Widgets/Button.dart';

import '../Widgets/BackgroundImage.dart';
import '../Widgets/Colors.dart';
import '../Widgets/PasswordTextField.dart';
final pcontroller = TextEditingController();
final pwcontroller  = TextEditingController();
class emailcheck extends StatefulWidget {
  const emailcheck({Key? key}) : super(key: key);

  @override
  State<emailcheck> createState() => _emailcheckState();
}

class _emailcheckState extends State<emailcheck> {
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(image: "assets/Masjid welcome.png"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar:AppBar(
            title: Text("Forgot Password",
            style: bodytext,),
            centerTitle: true,
            backgroundColor: dark.withOpacity(0.8),
            elevation: 0,
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,color:Colors.white) ,),
          ) ,
        body:Column(
        children: [
          Container(
            margin:EdgeInsets.only(top: 50, left: 5) ,
          ),
          passwordInput(
            cont: pcontroller,
            icon: FontAwesomeIcons.lock,
             hint: "New Password", 
             inputType: TextInputType.name,
              inputAction: TextInputAction.next,
              ),
          passwordInput(
            cont: pwcontroller,
            icon: FontAwesomeIcons.lock, 
            hint: "Confirm Password", 
            inputType: TextInputType.name, 
            inputAction: TextInputAction.done,
            ),
            SizedBox(
                       height: 5,
                    ),
                    Container(
                      height: size.height*0.09,
      width: size.width*0.9,
      decoration: BoxDecoration(borderRadius:BorderRadius.circular(16),
      ),),
      Buttons(buttontext: "Done", onTap: (){
         Navigator.push(
                 context,
                MaterialPageRoute(builder: (context) => const MyDrawer()),);
      })
        ],
      ), 
    ),
        //             ),
        //     ]),
        //     ),
        //     ]),
        // ),

      ]);
  }
}
