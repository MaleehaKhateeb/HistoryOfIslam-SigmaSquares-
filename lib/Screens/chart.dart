import'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
class Chart extends StatefulWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  //Map is an object which declear the keys and value of any type in it 
  //Here we use the String and Double type Key and Value
  Map<String,double> dataMap= {
  "Hazrat Adam (A.S)         = 1000 Years":          1000,
  "Hazrat Nooh (A.S)         = 950 Years":          950,
  "Hazrat Shoaib (A.S)       = 882 Years":        882,
  "Hazrat Sualeh (A.S)       = 586 Years":         586,
  "Hazrat Idrees (A.S)       = 356 Years":         356,
  "Hazrat Hood (A.S)         = 265 Years":            265,
  "Hazrat Zakria (A.S)       = 207 Years" :        207,
  "Hazrat Ibrahim (A.S)      = 195 Years":        195,
  "Hazrat Suleman (A.S)      = 150 Years":        150,
  "Hazrat Ayub (A.S)         = 146 Years":           146,
  "Hazrat Ismail (A.S)       = 137 Years":         137,
  "Hazrat Yaqoob (A.S)       = 129 Years":        129,
  "Hazrat Moosa (A.S)        = 125 Years":          125,
  "Hazrat Ishaaq (A.S)       = 120 Years":         120,
  "Hazrat Haroon (A.S)       = 119 Years":         119,
  "Hazrat Yousaf (A.S)       = 110 Years":         110,
  "Hazrat Yahya (A.S)        = 95 Years" :          95,
  "Hazrat Muhammad (S.A.W.W) = 63 Years":    63,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     title: Text("Prophet Ages",style: TextStyle(
      //       color: Color(0xFFedb97b),
      //       fontFamily: "bold",
      //       fontSize: 25
      //     ),),
      //     backgroundColor: Color(0xFF043A39),
      //     centerTitle: true,
      //   ),
        body: Container(
         child: Center(
          child: PieChart(
            //Mapping data on pie chart
            dataMap: dataMap,
            ringStrokeWidth: 32,
            //Center Text in Pie Chart
            centerText: "Ages",  
            //Type of Pie Chart is Ring 
            chartType: ChartType.ring,
            chartLegendSpacing: 20,
            chartRadius: MediaQuery.of(context).size.width/1.7,
            legendOptions: LegendOptions(
              //Labels is end of the pie chart
              legendPosition: LegendPosition.bottom,

              //Colors of the Labels in Rectangular form
              legendShape: BoxShape.rectangle,

              legendTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),
            ),
            chartValuesOptions: ChartValuesOptions(
              //Show Values out side of the pie chart
              showChartValuesOutside: true,

              //Show the Values 
              showChartValues: true  
            ),
            ),
         ),
        ),
    );
  }
}