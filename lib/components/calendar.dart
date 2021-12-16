import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DefaultCalendar extends StatefulWidget {
  DefaultCalendar({Key? key}) : super(key: key);

  @override
  State<DefaultCalendar> createState() => _DefaultCalendarState();
}

class _DefaultCalendarState extends State<DefaultCalendar> {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(2021),
      lastDay: DateTime.utc(2025),
      focusedDay: focusedDay,
      calendarFormat: CalendarFormat.week,
      selectedDayPredicate: (day) {
        return isSameDay(selectedDay, day);
      },
      onDaySelected: (selectDay, focusDay) {
        setState(() {
          selectedDay = selectDay;
          focusedDay = focusDay;
        });
      },
    );
  }
}
