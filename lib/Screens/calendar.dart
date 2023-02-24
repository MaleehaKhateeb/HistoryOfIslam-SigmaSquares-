import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:table_calendar/table_calendar.dart';
class calendar extends StatefulWidget {
  const calendar({Key? key}) : super(key: key);

  @override
  State<calendar> createState() => _calendarState();
}

class _calendarState extends State<calendar> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedday =DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 2, 46, 45),
         title: Text("Calendar",
         style: TextStyle(
         fontFamily: "bold",
         color: Color(0xFFedb97b),
         fontSize: 28
      ),),
      centerTitle: true,// Title in Center
      ),
      body: TableCalendar(
        calendarFormat: _calendarFormat,
        //Starting from Monday
        startingDayOfWeek: StartingDayOfWeek.monday,
        focusedDay: _focusedday, 
        rowHeight: 60,
        //Height of Cell 
        daysOfWeekHeight: 60,
        //Calender start from 1970 - 2050
        firstDay: DateTime(1970), 
        lastDay: DateTime(2050)),
    );
  }
}