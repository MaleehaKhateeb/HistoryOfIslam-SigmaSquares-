import 'package:flutter/material.dart';
import 'package:flutter/src/painting/gradient.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islamic_app/Screens/CreateNewAccount.dart';
import 'package:islamic_app/Widgets/Colors.dart';
import 'package:islamic_app/Screens/ForgotPassword.dart';
import 'package:islamic_app/Widgets/BackgroundImage.dart';
import 'package:islamic_app/Widgets/widgets.dart';
import 'package:islamic_app/Widgets/Button.dart';
import 'package:islamic_app/services/user_model.dart'; 
import 'package:shared_preferences/shared_preferences.dart';
final pwd_controller = TextEditingController();
final email_controller = TextEditingController();
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(image: 'assets/Masjid welcome.png',),
       Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
           Spacer(),
            Center(
                child: Text("History Of Islam" ,
                maxLines: 1,
                style: TextStyle(
                fontFamily: 'GreatVibes',
                color: Color.fromARGB(255, 1, 90, 82),
                fontSize: 56,
                fontWeight: FontWeight.bold
                          ),),
              ),
            Spacer(),
               Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                 children: [
                  TextInputField(
                    cont: email_controller,
                    hint: "Email",icon: FontAwesomeIcons.envelope,inputAction: TextInputAction.next,inputType:TextInputType.emailAddress),
                 passwordInput(
                  cont: pwd_controller,
                  hint: "Password",icon: FontAwesomeIcons.lock,inputAction: TextInputAction.done,inputType:TextInputType.name),
              GestureDetector(
                onTap:() => Navigator.push(context,  MaterialPageRoute(builder: (context) => const ForgotPassword()),),
                child:Container(
                   height:size.height* 0.052,
        width:size.width* 0.52,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 1, 90, 82).withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text("Forgot Password", style: bodytext,
                  ),
        ) ,
               ),
              ),
              SizedBox(
                height: 25,
              ),
              const RoundedButton(
                
              ),
               SizedBox(
                height: 25,
              ),
             
                 ],
               ),
              GestureDetector(
                onTap: () {
                   Navigator.push(
                 context,
                MaterialPageRoute(builder: (context) => const CreateNewAccount()),);
                },
                child: Container(
                  child: Text(
                    "Creating New Account",
                    style: bodytext,),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 1,
                      color: Color.fromARGB(255, 1, 90, 82),))
                    ),
                ),
              ),
              Spacer(),
              
          ],
        ),
       )
      ],
    );
  }
  
  
}

