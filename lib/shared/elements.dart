import 'package:calendar/shared/components/sticky_group_list.dart';

List<Element> elements = <Element>[
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
  Element(
      '', (DateTime.now().add(const Duration(days: 11))), 'No appointments'),
];
