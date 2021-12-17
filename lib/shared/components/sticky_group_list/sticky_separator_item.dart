import 'package:calendar/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Element {
  DateTime date;
  String name;
  IconData icon;

  Element(this.date, this.name, this.icon);
}

class StickySeparatorItem extends StatelessWidget {
  const StickySeparatorItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: separatorColor,
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Text(
            DateFormat.MMMEd().format(DateTime.now()),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0,
            ),
          ),
          const Spacer(),
          Icon(
            Icons.add,
            size: 20.0,
            color: separatorIconColor,
          ),
        ],
      ),
    );
  }
}
