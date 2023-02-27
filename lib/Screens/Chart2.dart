import 'package:flutter/material.dart';
import 'package:islamic_app/Screens/Chart3.dart';
import 'package:pie_chart/pie_chart.dart';
class chart2 extends StatefulWidget {
  const chart2({Key? key}) : super(key: key);

  @override
  State<chart2> createState() => _chart2State();
}

class _chart2State extends State<chart2> {
   Map<String,double> data_Map= {
  "Hazrat Zakria (A.S)       = 207 Years":207,
  "Hazrat Ibrahim (A.S)      = 195 Years":195,
  "Hazrat Suleman (A.S)      = 150 Years":150,
  "Hazrat Ayub (A.S)         = 146 Years":146,
  "Hazrat Ismail (A.S)       = 137 Years":137,
  "Hazrat Yaqoob (A.S)       = 129 Years":129,
  
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
                  (context)=> chart3()));
              },
              child: Container(
                  color: Colors.blue[300],
                          height: 60,
                          width: 200,
                          child: Center(
                            child: Text("More...",
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