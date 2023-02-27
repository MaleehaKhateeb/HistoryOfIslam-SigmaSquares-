// Cards For Representing books
import 'package:flutter/material.dart';
import 'package:islamic_app/Book.dart';
class RecomendedItems extends StatelessWidget {
  const RecomendedItems({
    //required data for this class
    Key? key, 
    required this.name,
    required this.image, 
    required this.Author, 
    required this.press,
    required this.heig ,
    required this.wid,
  }) : super(key: key);

 final String name, image;
 final String Author;
 final VoidCallback press;
 final double heig, wid ;
  @override
  Widget build(BuildContext context) {
    //get the size of screen
    Size size = MediaQuery.of(context).size;
    return 
        Container(
         height: 200,
         margin: EdgeInsets.only(
          left:20,
          top: 20/2,
          bottom: 20*2.5 ),
         // color: Colors.teal,
         decoration: BoxDecoration( 
         color: Color.fromARGB(255, 2, 46, 45).withOpacity(0.8),
         boxShadow: [
           BoxShadow(
           color: Color.fromARGB(255, 2, 46, 45),
           blurRadius: 20,
         )],
         borderRadius: BorderRadius.all(Radius.circular(16),
         ),
         ),
         width: size.width*0.35,
         child: Column(
           children: [
             Image(
              alignment: Alignment.center,
              //Get Image
              image: AssetImage(image),
              height: heig ,
              width: wid,
              fit: BoxFit.fill,

             ),
             GestureDetector(
              onTap: press,
               child: Container(
                 height: 50,
                 width: size.width*0.35,
                 margin: EdgeInsets.only(top: 50),
                 padding:EdgeInsets.all(20 /2),
                 decoration: 
                 BoxDecoration(color: Colors.white,
                 // boxShadow: [
                 //  BoxShadow(
                 //   offset: Offset(0, 10),
                 //   blurRadius: 50,
                 //   color: Colors.black.withOpacity(0.5),
                   
                 //  ),
                  
                 // ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                 ),
                 child: Column(
                   children: [
                    //Name of book
                     Text("$name",
                    overflow: TextOverflow.ellipsis,
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                   ),
                   ),
                Spacer(),
                //Name of author
                 Text("$Author" ,
                 textAlign: TextAlign.left,
                 overflow: TextOverflow.ellipsis,
                 style: TextStyle(
                  fontFamily: "button",
                   color: Colors.teal,
                  fontSize: 12,
                  
                 ),
                 ),
                
                 ]),
               ),
             ),
                 ],
               
               
              
               
             )
             
           
       );
  }
}

