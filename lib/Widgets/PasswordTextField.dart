//Widget of textfield of Password
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:islamic_app/Screens/CreateNewAccount.dart';
import 'package:islamic_app/Screens/emailcheck.dart';
import 'package:islamic_app/Widgets/Colors.dart';
import 'package:islamic_app/Screens/login.dart';
final pwd_controller = TextEditingController();
class passwordInput extends StatefulWidget {
  const passwordInput({
    Key? key,
    //Items required
    required this.icon,
    required this.hint, 
    required this.inputType,
    required this.inputAction,
    required this.cont,
  }) : super(key: key);
  final IconData icon;
final String hint;
final TextInputType inputType;
final TextInputAction inputAction;
final TextEditingController cont;
  @override
  State<passwordInput> createState() => _passwordInputState();
}

class _passwordInputState extends State<passwordInput> {
   bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
         height:size.height* 0.08,
        width:size.width* 0.9,
        decoration: BoxDecoration(
          color:const Color.fromARGB(255, 1, 90, 82).withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        
        child: TextField(
          controller: widget.cont,
          cursorColor: Colors.white,
          obscureText: _isObscure,// show the password / hide the password
          decoration: InputDecoration(
            suffixIcon: IconButton(
                icon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    _isObscure ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  setState(() {  
                    // rebuilt a widget
                    _isObscure = !_isObscure;
                  });
                  }),
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 10),
            hintText: widget.hint,
            hintStyle: bodytext,
            prefixIcon: Padding(
              padding: const EdgeInsets.only(top: 10),
              
              child: Icon(
                widget.icon,
              size: 28,color: Colors.white,),
            ),
          ),
          style: bodytext,
          keyboardType: widget.inputType,
          textInputAction:widget.inputAction,
          
        ),
      ),
    );
  }
}
