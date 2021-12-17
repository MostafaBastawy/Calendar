import 'package:calendar/shared/components/sticky_group_list/sticky_builder_item.dart';
import 'package:calendar/shared/components/sticky_group_list/sticky_separator_item.dart';
import 'package:flutter/material.dart';
import 'package:sticky_grouped_list/sticky_grouped_list.dart';

List<Element> _elements = <Element>[
  Element(DateTime.now(), 'Got to gym', Icons.fitness_center),
  Element(DateTime(2020, 6, 18, 30), 'Work', Icons.work),
  Element(DateTime(2020, 6, 19, 30), 'Work', Icons.work),
  Element(DateTime(2020, 6, 20, 30), 'Work', Icons.work),
  Element(DateTime(2020, 6, 21, 30), 'Work', Icons.work),
  Element(DateTime(2020, 6, 22, 30), 'Work', Icons.work),
  Element(DateTime(2020, 6, 23, 30), 'Work', Icons.work),
  Element(DateTime(2020, 6, 24, 30), 'Work', Icons.work),
  Element(DateTime(2020, 6, 25, 30), 'Work', Icons.work),
  Element(DateTime(2020, 6, 26, 30), 'Work', Icons.work),
  Element(DateTime(2020, 6, 27, 30), 'Work', Icons.work),
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
          value2.compareTo(value1),
      itemComparator: (Element element1, Element element2) =>
          element1.date.compareTo(element2.date),
      floatingHeader: true,
      groupSeparatorBuilder: (Element element) => const StickySeparatorItem(),
      itemBuilder: (BuildContext context, Element element) {
        return const StickyBuilderItem();
      },
    );
  }
}

class Element {
  DateTime date;
  String name;
  IconData icon;

  Element(this.date, this.name, this.icon);
}

// Container(
// width: double.infinity,
// height: 50,
// child: Align(
// alignment: Alignment.center,
// child: Container(
// width: 120,
// decoration: BoxDecoration(
// color: Colors.blue[300],
// border: Border.all(
// color: Colors.blue[300]!,
// ),
// borderRadius: const BorderRadius.all(Radius.circular(20.0)),
// ),
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Text(
// '${element.date.day}. ${element.date.month}, ${element.date.year}',
// textAlign: TextAlign.center,
// ),
// ),
// ),
// ),
// );
