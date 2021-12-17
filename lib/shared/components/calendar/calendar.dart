import 'package:calendar/cubit/cubit.dart';
import 'package:calendar/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

class DefaultCalendar extends StatelessWidget {
  const DefaultCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime selectedDay = DateTime.now();
    DateTime focusedDay = DateTime.now();
    return BlocBuilder<AppCubit, AppStates>(
      builder: (BuildContext context, state) => TableCalendar(
        firstDay: DateTime.now(),
        lastDay: DateTime.utc(2025),
        focusedDay: focusedDay,
        calendarFormat: CalendarFormat.week,
        selectedDayPredicate: (day) {
          return isSameDay(selectedDay, day);
        },
        onDaySelected: (selectDay, focusDay) {
          selectedDay = selectDay;
          focusedDay = focusDay;
          AppCubit.get(context).emit(AppRefreshState());
        },
        onFormatChanged: (CalendarFormat calendarFormat) {},
      ),
    );
  }
}
