import 'package:calendar/shared/colors.dart';
import 'package:calendar/shared/elements.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sticky_grouped_list/sticky_grouped_list.dart';

class Element {
  String? prefix;
  DateTime date;
  String name;

  Element(this.prefix, this.date, this.name);
}

class DefaultStickyGroupList extends StatefulWidget {
  DefaultStickyGroupList({Key? key}) : super(key: key);

  @override
  State<DefaultStickyGroupList> createState() => _DefaultStickyGroupListState();
}

class _DefaultStickyGroupListState extends State<DefaultStickyGroupList> {
  var stickyController = GroupedItemScrollController();

  @override
  Widget build(BuildContext context) {
    return StickyGroupedListView<Element, DateTime>(
      itemScrollController: stickyController,
      elements: elements,
      order: StickyGroupedListOrder.ASC,
      groupBy: (Element element) =>
          DateTime(element.date.year, element.date.month, element.date.day),
      groupComparator: (DateTime value1, DateTime value2) =>
          value1.compareTo(value2),
      itemComparator: (Element element1, Element element2) =>
          element2.date.compareTo(element1.date),
      floatingHeader: true,
      groupSeparatorBuilder: (Element element) => Container(
        width: double.infinity,
        color: separatorColor,
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Text(
              '${element.prefix} ${DateFormat.MMMEd().format(element.date)}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
                color: element.prefix == 'Today,' ? todayColor : Colors.black,
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
      ),
      itemBuilder: (BuildContext context, Element element) {
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(30.0),
          child: Text(element.name),
        );
      },
    );
  }
}
