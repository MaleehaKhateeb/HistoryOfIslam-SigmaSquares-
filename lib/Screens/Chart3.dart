import 'package:flutter/material.dart';
import 'package:islamic_app/Screens/drawer.dart';
import 'package:pie_chart/pie_chart.dart';
class chart3 extends StatefulWidget {
  const chart3({Key? key}) : super(key: key);

  @override
  State<chart3> createState() => _chart3State();
}

class _chart3State extends State<chart3> {
  Map<String,double> data_Map= {
  "Hazrat Moosa (A.S)        = 125 Years":125,
  "Hazrat Ishaaq (A.S)       = 120 Years":120,
  "Hazrat Haroon (A.S)       = 119 Years":119,
  "Hazrat Yousaf (A.S)       = 110 Years":110,
  "Hazrat Yahya (A.S)        = 95 Years":95,
  "Hazrat Muhammad (S.A.W.W) = 63 Years":63,
  };
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
          title: Text("Prophet Ages",style: TextStyle(
            color: Color(0xFFedb97b),
            fontFamily: "bold",
            fontSize: 25
          ),),
          backgroundColor: Color(0xFF043A39),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(height: 100,),
            Container(
             child: Center(
              child: PieChart(
                //Mapping data on pie chart
                dataMap: data_Map,
                ringStrokeWidth: 40,
                //Center Text in Pie Chart
                centerText: "Ages",  
                //Type of Pie Chart is Ring 
                chartType: ChartType.ring,
                chartLegendSpacing: 50,
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
             SizedBox(height: 80,),
            InkWell(
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: 
                  (context)=> MyDrawer()));
              },
              child: Container(
                  color: Colors.blue[300],
                          height: 60,
                          width: 200,
                          child: Center(
                            child: Text("Go To Main Screen",
                            style:TextStyle(
                              fontSize: 20,
                              color: Colors.white
                            ) ,),
                          ),
              ),
            )
          ],
        ),
        
    );
  }
}