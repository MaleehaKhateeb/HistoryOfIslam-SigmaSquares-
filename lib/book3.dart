import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
class book3 extends StatefulWidget {
  const book3({Key? key}) : super(key: key);

  @override
  State<book3> createState() => _book3State();
}

class _book3State extends State<book3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 46, 45),
        title: Text("Chronology of Islam"),
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
        
        ).fromAsset('assets/Chronology of Islam.pdf'),
      ),

      
      
        );
  }
}