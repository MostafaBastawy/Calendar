import 'package:calendar/shared/colors.dart';
import 'package:flutter/material.dart';

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
          const Text('Thus Dec 9'),
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
