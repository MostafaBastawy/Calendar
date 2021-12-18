import 'package:calendar/cubit/cubit.dart';
import 'package:calendar/cubit/states.dart';
import 'package:calendar/shared/components/calendar/calendar.dart';
import 'package:calendar/shared/components/sticky_grouped_list/sticky_group_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (BuildContext context, state) => Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Calendar',
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.add,
            size: 40.0,
          ),
        ),
        body: Column(
          children: [
            const DefaultCalendar(),
            Expanded(
              child: DefaultStickyGroupList(),
            ),
            //DefaultStickyGroupList(),
          ],
        ),
      ),
    );
  }
}
