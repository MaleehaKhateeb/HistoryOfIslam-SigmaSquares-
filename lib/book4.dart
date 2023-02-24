import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
class book4 extends StatefulWidget {
  const book4({Key? key}) : super(key: key);

  @override
  State<book4> createState() => _book4State();
}

class _book4State extends State<book4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 46, 45),
        title: Text("History Of Islam 1"),
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
        
        ).fromAsset('assets/History Of Islam 1_text.pdf'),
      ),

      
      
        );
  }
}