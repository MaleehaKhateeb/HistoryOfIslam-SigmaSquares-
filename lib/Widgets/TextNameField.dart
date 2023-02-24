import 'package:flutter/material.dart';
import 'package:islamic_app/Widgets/Colors.dart';
final name_controller = TextEditingController();

class NameTextField extends StatefulWidget {
  const NameTextField({
    Key? key, 
    required this.icon,
    required this.hint, 
    required this.inputType,
    required this.inputAction,    
  }) : super(key: key);
final IconData icon;
final String hint;
final TextInputType inputType;
final TextInputAction inputAction;
  @override
  State<NameTextField> createState() => _NameTextFieldState();
}

class _NameTextFieldState extends State<NameTextField> {
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
        child: TextField(
          controller: name_controller,
          cursorColor: Colors.white,
          decoration: InputDecoration(
            border: InputBorder.none,
            //contentPadding: EdgeInsets.only(top: 10),
            hintText: widget.hint,
            hintStyle: bodytext,
            prefixIcon:  Icon(
                widget.icon,
              size: 28,color: Colors.white,),
            ),
          
          style: bodytext,
          keyboardType:widget.inputType,
          textInputAction: widget.inputAction,
        ),
      ),
    );
  }
}