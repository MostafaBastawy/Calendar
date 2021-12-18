import 'package:calendar/cubit/cubit.dart';
import 'package:calendar/cubit/states.dart';
import 'package:calendar/models/item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemBuilder extends StatelessWidget {
  BuilderItem? builderItem;
  int? index;
  ItemBuilder({Key? key, required this.builderItem, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (BuildContext context, state) => Container(
        width: double.infinity,
        padding: const EdgeInsets.all(30.0),
        child: Text(builderItem!.name),
      ),
    );
  }
}
