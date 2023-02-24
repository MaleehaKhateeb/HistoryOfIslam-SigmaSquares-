import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islamic_app/Screens/emailcheck.dart';
import 'package:islamic_app/Widgets/Button.dart'; 
import 'package:islamic_app/Widgets/Colors.dart';
import 'package:islamic_app/Widgets/BackgroundImage.dart';
import 'package:islamic_app/Widgets/InputTextField.dart';
import 'package:islamic_app/Widgets/PasswordTextField.dart';
import 'package:islamic_app/Widgets/widgets.dart';
final econtroler = TextEditingController();
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
   //Size size = MediaQuery.of(context).size;
    bool emailMatched = false;
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
          body: Column(
            children: [
              Center(
                child: Column(
                  children: [
                     SizedBox(
                      height: size.height*0.1,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(color: Colors.white54),
                        width: size.width*0.8,
                        child: 
                        Center(
                          child: Text("Enter Your Valid Email ."
                          ,style:TextStyle(
                             fontSize: 24,
                            color: Color.fromARGB(255, 1, 62, 57),
                            height: 1.5),),
                        ),  
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // !emailMatched ?
                    TextInputField(
                      cont: econtroler,
                      icon: FontAwesomeIcons.envelope,
                      hint: 'Email',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next),
                    
                   
      // Column(
      //   children: [
      //     passwordInput(
      //       icon: FontAwesomeIcons.lock,
      //        hint: "New Password", 
      //        inputType: TextInputType.name,
      //         inputAction: TextInputAction.next,
      //         ),
      //     passwordInput(
      //       icon: FontAwesomeIcons.lock, 
      //       hint: "Confirm Password", 
      //       inputType: TextInputType.name, 
      //       inputAction: TextInputAction.done,
      //       )
      //   ],
      // ),
      //   SizedBox(
      //                  height: 20,
      //               ),
      //               Container(
      //                 height: size.height*0.09,
      // width: size.width*0.9,
      // decoration: BoxDecoration(borderRadius:BorderRadius.circular(16),
      // ),
      
       Buttons(buttontext: "Verify", onTap: () {
         Navigator.push(
                 context,
                MaterialPageRoute(builder: (context) => const emailcheck()),);
        
        
      //  print(emailMatched);
        
      },
      )
      ]),
     
            
                ),
      ])
          
        )]
          
        
    );
  }
}