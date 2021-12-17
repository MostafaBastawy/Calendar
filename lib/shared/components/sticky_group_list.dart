import 'package:calendar/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sticky_grouped_list/sticky_grouped_list.dart';

class Element {
  String? prefix;
  DateTime date;
  String name;

  Element(this.prefix, this.date, this.name);
}

List<Element> _elements = <Element>[
  Element('Today,', DateTime.now(), 'No appointments'),
  Element('Tomorrow,', (DateTime.now().add(const Duration(days: 1))),
      'No appointments'),
  Element('', (DateTime.now().add(const Duration(days: 2))), 'No appointments'),
  Element('', (DateTime.now().add(const Duration(days: 3))), 'No appointments'),
  Element('', (DateTime.now().add(const Duration(days: 4))), 'No appointments'),
  Element('', (DateTime.now().add(const Duration(days: 5))), 'No appointments'),
  Element('', (DateTime.now().add(const Duration(days: 6))), 'No appointments'),
  Element('', (DateTime.now().add(const Duration(days: 7))), 'No appointments'),
  Element('', (DateTime.now().add(const Duration(days: 8))), 'No appointments'),
  Element('', (DateTime.now().add(const Duration(days: 9))), 'No appointments'),
  Element(
      '', (DateTime.now().add(const Duration(days: 10))), 'No appointments'),
];

class DefaultStickyGroupList extends StatelessWidget {
  const DefaultStickyGroupList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StickyGroupedListView<Element, DateTime>(
      elements: _elements,
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
                color: element.prefix == 'Today,'
                    ? Colors.deepPurple
                    : Colors.black,
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
