import 'package:calendar/models/item_model.dart';
import 'package:calendar/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SeparatorBuilder extends StatelessWidget {
  BuilderItem? builderItem;

  SeparatorBuilder({Key? key, required this.builderItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: separatorColor,
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Text(
            '${builderItem!.prefix} ${DateFormat.MMMEd().format(builderItem!.date)}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0,
              color:
                  builderItem!.prefix == 'Today,' ? todayColor : Colors.black,
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
