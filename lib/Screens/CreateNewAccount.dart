
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islamic_app/Screens/drawer.dart';
import 'package:islamic_app/Widgets/Colors.dart';
import 'package:islamic_app/Widgets/TextNameField.dart';
import 'package:islamic_app/Widgets/widgets.dart';
import 'package:islamic_app/services/user_model.dart';
import 'package:islamic_app/services/users_storage.dart';
TextEditingController em_controller = new TextEditingController();
TextEditingController pws_controller = new TextEditingController();
TextEditingController pwscontroller = new TextEditingController();


class CreateNewAccount extends StatefulWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  State<CreateNewAccount> createState() => _CreateNewAccountState();
}

class _CreateNewAccountState extends State<CreateNewAccount> {
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(image: "assets/Masjid welcome.png"),
         
            BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: new Container(
              decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
            ),
                 
         ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar:AppBar(
            title: Text(" Create New Account",
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
      
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height *0.02,
              ),
              Stack(
                children: [
                  Center(
                   // child: ClipOval(
                          child: CircleAvatar(
                             radius: size.width*0.12,
                            backgroundColor:dark.withOpacity(0.5),
                            child: Icon(FontAwesomeIcons.user,
                            color: Colors.white ,
                            size: size.width*0.1,),),
                  //)
                  ),
                   Positioned(
                top: size.height*0.03,
                left: size.width*0.56,
                child: Container(
                  width: size.width*0.09,
                  height: size.height*0.12,
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0.8),border: Border.all(
                    color: Colors.white,
                    width: 2
                  ),shape: BoxShape.circle ),
                  child: Icon(FontAwesomeIcons.arrowUp,color:dark,),
                ),
              ),
                ],
              ),
             
                 SizedBox(
                height: size.height *0.01,
              ),
              Column(
                children: [
                    NameTextField(
                      icon: FontAwesomeIcons.user, 
                      hint: 'Name', 
                      inputType: TextInputType.name, 
                      inputAction: TextInputAction.next),
                    TextInputField(
                      cont: em_controller,
                      icon: FontAwesomeIcons.envelope,
                      hint: "Email",
                      inputType: TextInputType.name, 
                      inputAction: TextInputAction.next),
                    passwordInput(
                      cont: pws_controller,
                      icon: FontAwesomeIcons.lock, 
                      hint: 'Password', 
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next),
                    passwordInput(
                      cont: pwscontroller,
                      icon: FontAwesomeIcons.lock, 
                      hint: "Confirm Password", 
                      inputType: TextInputType.name, 
                      inputAction: TextInputAction.done,
                      ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: size.height * 0.09,
                    width: size.width * 0.9,
                    child: Buttons(buttontext: 'Register', onTap: ()async{
                       if(
                        pws_controller.text.toString() 
                        == 
                        pwscontroller.text.toString()){
                           UserStorage.addUser(UserModel(
                            email: em_controller.text.toString(),
                      displayName: name_controller.text.toString(),
                      password: pwscontroller.text.toString(),
                      ));
                       Navigator.push(
                 context,
               await  MaterialPageRoute(builder: (context) => const MyDrawer()),);
                      ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text('New profile added!'),
                                ));
                      }else{
                        showDialog(context: context, builder: (context){
                    return Container(
                      child: AlertDialog(
                        title: Text("Password Not Matched"),
                        actions: [
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: Text("OK")),
                        ],
                      ),
                    );
                      });
                      }
                     
                      
                    })),
                   SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?',
                      style: bodytext,),
                     Padding(padding: EdgeInsets.only(left: 12)),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Text('Login',
                        style: bodytext.copyWith(color: IconColor,
                        fontWeight: FontWeight.bold)
                        ,),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    
    ]
      );
  }
}