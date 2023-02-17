import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class pdfbook extends StatefulWidget {
  const pdfbook({Key? key}) : super(key: key);

  @override
  State<pdfbook> createState() => _pdfbookState();
}

class _pdfbookState extends State<pdfbook> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("ArRaheeq_AlMakhtum_THE_SEALED_NECTAR"),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
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
        
        ).fromAsset('assets/English_ArRaheeq_AlMakhtum_THE_SEALED_NECTAR.pdf'),
      ),

      
      
        );
  }
}





