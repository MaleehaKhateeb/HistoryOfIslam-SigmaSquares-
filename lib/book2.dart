//Pdf of Book (Lesson from history)
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
class book2 extends StatefulWidget {
  const book2({Key? key}) : super(key: key);

  @override
  State<book2> createState() => _book2State();
}

class _book2State extends State<book2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 46, 45),
        title: Text("Lesson From History"),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          fontFamily: "bold"
        ),
        centerTitle: true,
      ),
       body: 
      Container(
        height: MediaQuery.of(context).size.height,
        child: PDF(
          enableSwipe: true,
          swipeHorizontal: true,
          autoSpacing: false,
          pageFling: false,
          fitPolicy: FitPolicy.BOTH,
          onError: (error) {
            print(error.toString());
          },
          onPageError: (page, error) {
            print('$page: ${error.toString()}');
          },
          onPageChanged: (page, total) {
            print('page change: $page/$total');
          },
        
        ).fromAsset('assets/lessonsfromhistory-121224033058-phpapp01.pdf'),
      ),

      
      
        );
  }
}