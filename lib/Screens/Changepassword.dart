import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islamic_app/Screens/drawer.dart';
import 'package:islamic_app/Widgets/Button.dart';
import 'package:islamic_app/Widgets/Colors.dart';
import 'package:islamic_app/Widgets/PasswordTextField.dart';

import 'package:islamic_app/services/user_model.dart';
import 'package:islamic_app/services/users_storage.dart';
class Changepass extends StatefulWidget {
  UserModel? usermodel;
  Changepass({Key? key, required this.usermodel}) : super(key: key);

  @override
  State<Changepass> createState() => _ChangepassState();
}

class _ChangepassState extends State<Changepass> {
  final pwscontroller= TextEditingController();
  final psscontroller = TextEditingController();



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 2, 62, 61),
      appBar:AppBar(
           backgroundColor: Color.fromARGB(255, 2, 46, 45),
      title: Text("Change password",style: TextStyle(
        fontFamily: "GreatVibes",
        color: Color(0xFFedb97b),
        fontSize: 28
      ),),centerTitle: true,
      ),
        body:Column(
        children: [
          Container(
            margin:EdgeInsets.only(top: 50, left: 5) ,
          ),
          passwordInput(
            cont: pwscontroller,
            icon: FontAwesomeIcons.lock,
             hint: "Your Password", 
             inputType: TextInputType.name,
              inputAction: TextInputAction.next,
              ),
          passwordInput(
            cont: psscontroller,
            icon: FontAwesomeIcons.lock, 
            hint: "New Password", 
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
            Buttons(
              buttontext: "Done", onTap: ()async{
                if(pwscontroller.text.isEmpty){
                  ScaffoldMessenger.of(context).
              showSnackBar(const SnackBar(
                backgroundColor: Colors.red,
                 content: Text("Enter old password")));
              return;
                }
                List<UserModel?> passdata = await UserStorage.getAllUsersData();
                print(widget.usermodel);
                bool passMatched = false;
                for (var element in passdata) {
                  if (element?.password == pwscontroller.text) {
                    passMatched = true;
                }

                }
                if(!passMatched){
                     ScaffoldMessenger.of(context).
              showSnackBar(const SnackBar(backgroundColor: Colors.red, content: Text("Incorrect password")));
                  }
                  else{
                    if(psscontroller.text.isEmpty){
                      ScaffoldMessenger.of(context).
              showSnackBar(const SnackBar(backgroundColor: Colors.red, content: Text("Enter new password")));
              return; 
                    }
                    else{
                      widget.usermodel!.password = psscontroller.text;
                      if(await UserStorage.updateUserPassword(widget.usermodel!)){
            ScaffoldMessenger.of(context).
              showSnackBar(const SnackBar(backgroundColor: Colors.green, content: Text("Password updated.")));
              
                      }
                    }
                  }
                
      //               Navigator.push(
      //                       context,
      //                       MaterialPageRoute(builder: (context) => const MyDrawer()),);
      })
        ],
      ),
    );
  }
}