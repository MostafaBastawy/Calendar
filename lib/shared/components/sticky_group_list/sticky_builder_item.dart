import 'package:flutter/material.dart';

class StickyBuilderItem extends StatelessWidget {
  const StickyBuilderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(30.0),
      child: const Text('No appointments'),
    );
  }
}
