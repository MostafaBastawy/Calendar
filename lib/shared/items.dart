import 'package:calendar/models/item_model.dart';

List<BuilderItem> item = <BuilderItem>[
  BuilderItem('Today,', DateTime.now(), 'No appointments'),
  BuilderItem('Tomorrow,', (DateTime.now().add(const Duration(days: 1))),
      'No appointments'),
  BuilderItem(
      '', (DateTime.now().add(const Duration(days: 2))), 'No appointments'),
  BuilderItem(
      '', (DateTime.now().add(const Duration(days: 3))), 'No appointments'),
  BuilderItem(
      '', (DateTime.now().add(const Duration(days: 4))), 'No appointments'),
  BuilderItem(
      '', (DateTime.now().add(const Duration(days: 5))), 'No appointments'),
  BuilderItem(
      '', (DateTime.now().add(const Duration(days: 6))), 'No appointments'),
  BuilderItem(
      '', (DateTime.now().add(const Duration(days: 7))), 'No appointments'),
  BuilderItem(
      '', (DateTime.now().add(const Duration(days: 8))), 'No appointments'),
  BuilderItem(
      '', (DateTime.now().add(const Duration(days: 9))), 'No appointments'),
  BuilderItem(
      '', (DateTime.now().add(const Duration(days: 10))), 'No appointments'),
  BuilderItem(
      '', (DateTime.now().add(const Duration(days: 11))), 'No appointments'),
];
