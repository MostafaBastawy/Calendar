import 'package:calendar/shared/components/calendar.dart';
import 'package:calendar/shared/components/sticky_group_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Calendar',
          ),
        ),
      ),
      body: Column(
        children: const [
          DefaultCalendar(),
          Expanded(
            child: DefaultStickyGroupList(),
          ),
          //DefaultStickyGroupList(),
        ],
      ),
    );
  }
}
