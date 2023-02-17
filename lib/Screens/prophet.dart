import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/Bookmain.dart';
import 'package:islamic_app/Screens/body.dart';
import 'package:islamic_app/Screens/bookmark.dart';
import 'package:islamic_app/Screens/more.dart';
import 'package:islamic_app/Screens/pic-data.dart';
import 'package:islamic_app/Screens/prophet/views/prophet_list.dart';
import 'package:islamic_app/Screens/prophetdetails.dart';
import 'package:islamic_app/Screens/square.dart';
import 'package:islamic_app/Widgets/roundedbutton.dart';
import'package:flutter/src/material/colors.dart';
class prophet extends StatefulWidget {
  const prophet({Key? key}) : super(key: key);

  @override
  State<prophet> createState() => _prophetState();
}

class _prophetState extends State<prophet> {
 int sideLength = 150;
 final List name = [
'Hazarat Adam (A.S)',
'Hazarat Idrees (A.S)',
"Hazarat Nuh (A.S)",
"Hazarat Hud (A.S)",
"Hazarat Saleh (A.S)",
"Hazarat Ibrahim (A.S)",
"Hazarat Lut (A.S)",
"Hazarat Ismael (A.S)",
"Hazarat Ishaq (A.S)",
"Hazarat Yaqoob (A.S)",
"Hazarat Yousaf (A.S)",
"Hazarat Ayub (A.S)",
"Hazarat Shoaib (A.S)",
"Hazarat Musa (A.S)",
"Hazarat Haroon (A.S)",
"Hazarat Dhulkifl (A.S)",
"Hazarat Daud (A.S)",
"Hazarat Sulaman (A.S)",
"Hazarat Yunus (A.S)",
"Hazarat Ilyas (A.S)",
"Hazarat Alisha (A.S)",
"Hazarat Zakriya (A.S)",
"Hazarat Yahya (A.S)",
"Hazarat Isa (A.S)",
"Hazarat Muhammad (SAW)"
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Prophet",style: TextStyle(
           fontFamily: "button",
        ),),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 23,
        ),
        centerTitle: true,
      ),
    
       body: ListView.builder(
        itemCount: name.length,
        itemBuilder: ((context, index) {
         return InkWell(
          onTap: () {
         Navigator.push(context, MaterialPageRoute(builder: (context)=> prophetdetails()));
            
          },
           child: MySquare(
            name: name[index],
           ),
         );
       }))
              
    
    );
  }
  
  
}