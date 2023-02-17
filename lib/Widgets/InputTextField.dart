import 'package:flutter/material.dart';
import 'package:islamic_app/Screens/CreateNewAccount.dart';
import 'package:islamic_app/Widgets/Colors.dart';
import 'package:islamic_app/Screens/login.dart';
import 'package:islamic_app/Screens/ForgotPassword.dart';
final email_controller = TextEditingController();

class TextInputField extends StatefulWidget {
  const TextInputField({
    Key? key, 
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
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height:size.height* 0.08,
        width:size.width* 0.9,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 1, 90, 82).withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextFormField(
          validator: (val) => val!.isEmpty || !val.contains("@")
              ? "enter a valid eamil"
              : null,
          controller: widget.cont,
          cursorColor: Colors.white,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 20),
            hintText: widget.hint,
            hintStyle: bodytext,
            prefixIcon: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Icon(
                widget.icon,
              size: 28,color: Colors.white,),
            )
          ),
          style: bodytext,
          keyboardType:widget.inputType,
          textInputAction: widget.inputAction,
        ),
      ),
    );
  }
}