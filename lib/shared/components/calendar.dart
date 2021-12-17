import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DefaultCalendar extends StatefulWidget {
  const DefaultCalendar({Key? key}) : super(key: key);

  @override
  State<DefaultCalendar> createState() => _DefaultCalendarState();
}

class _DefaultCalendarState extends State<DefaultCalendar> {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.now(),
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
      onFormatChanged: (CalendarFormat calendarFormat) {},
      calendarBuilders: CalendarBuilders(),
    );
  }
}
