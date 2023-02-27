//Example of Bar Chart
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:islamic_app/Screens/datamodel.dart';

class BarChartWidget extends StatefulWidget {
  @override
  State<BarChartWidget> createState() => _BarChartWidgetState();
}

class _BarChartWidgetState extends State<BarChartWidget> {
  //List of datamodel this list is flexible
  List<DataModel> _list = List<DataModel>.empty(growable: true);
  @override
  //changes during runtime
  void initState() {
    super.initState();
    //Add Model in list
    _list.add(DataModel(key: "0", value: "1000.0"));
    _list.add(DataModel(key: "1", value: "950.0"));
    _list.add(DataModel(key: "2", value: "882.0"));
    _list.add(DataModel(key: "3", value: "586.0"));
    _list.add(DataModel(key: "4", value: "356.0"));
    _list.add(DataModel(key: "5", value: "265.0"));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // Alignment is Start of screen
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
           child: Container(
            color: Colors.white,
            height: 50,
            width: 200,
          ),
          flex: 1),
          Expanded(child: Container(
            color: Colors.white,
            height: 100,
            width: 200,
            //Bar class to build the Barchart acording to the given data
            child: BarChart(
              BarChartData(
                backgroundColor: Colors.white,
                barGroups: _chartGroups(),
                borderData: FlBorderData(
                    border: const Border(
                      bottom: BorderSide(), 
                    left: BorderSide()
                    )
                    ),
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(sideTitles: _bottomTitles),
                 //Side titles
                  leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                         interval: 1,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            value.toString(),
                            style: const TextStyle(fontSize: 10),
                          );
                        },
                      )),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false)),
                  rightTitles: AxisTitles(sideTitles: SideTitles(
                    showTitles: false)),
                ),
              ),
            ),
          ),
          flex: 2),
        ],
      ),
    );
  }
// Bars
  List<BarChartGroupData> _chartGroups() {
    List<BarChartGroupData> list =
        List<BarChartGroupData>.empty(growable: true);
        //Loop for the showing bars
    for (int i = 0; i < _list.length; i++) {
      list.add(BarChartGroupData(x: i, barRods: [
        BarChartRodData(
            toY: double.parse(_list[i].value!),
            color: Colors.teal[500] //Bar colors
            )
      ]));
    }
    return list;
  }
// Bottom Titles
  SideTitles get _bottomTitles => SideTitles(
        showTitles: true,
        getTitlesWidget: (value, meta) {
          String text = '';
          switch (value.toInt()) {
            case 0:
              text = 'Adam';
              break;
            case 1:
              text = 'Nooh';
              break;
            case 2:
              text = 'Shoaib';
              break;
            case 3:
              text = 'Idress';
              break;
            case 4:
              text = 'Hood';
              break;
           
          }

          return Text(
            text,
            style: TextStyle(fontSize: 10),
          );
        },
      );
}