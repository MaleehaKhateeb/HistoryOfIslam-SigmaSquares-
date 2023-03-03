
//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
class bookmark extends StatefulWidget {
  const bookmark({Key? key}) : super(key: key);

  @override
  State<bookmark> createState() => _bookmarkState();
}

class _bookmarkState extends State<bookmark> {
  
  @override 
  Widget build(BuildContext context) {
    //Load the existing PDF document.
// final PdfDocument document =
//     PdfDocument(inputBytes: File('input.pdf').readAsBytesSync());
// //Create a document bookmark.
// final PdfBookmark bookmark = document.bookmarks.add('Page 1');
// //Set the destination page and location.
// bookmark.destination = PdfDestination(document.pages[1], Offset(20, 20));
// //Set the bookmark color.
// bookmark.color = PdfColor(255, 0, 0);
// //Save the document.
// File('bookmark.pdf').writeAsBytes(await document.save());
// //Dispose the document.
// document.dispose();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Bookmarks",
          style: TextStyle(
          fontFamily: "bold",
          fontSize: 25,
          color: Color(0xFFedb97b)
        ),),
        backgroundColor: Color(0xFF043A39),
        centerTitle: true,
      ),
      body: Container(
        
        
      )
     );
  }
}