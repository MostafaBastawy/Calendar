import 'package:calendar/cubit/cubit.dart';
import 'package:calendar/cubit/states.dart';
import 'package:calendar/models/item_model.dart';
import 'package:calendar/shared/components/sticky_grouped_list/group_item_builder.dart';
import 'package:calendar/shared/components/sticky_grouped_list/group_separator_builder.dart';
import 'package:calendar/shared/items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sticky_grouped_list/sticky_grouped_list.dart';

class DefaultStickyGroupList extends StatelessWidget {
  var groupedItemScrollController = GroupedItemScrollController();
  DefaultStickyGroupList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (BuildContext context, state) {
        return StickyGroupedListView<BuilderItem, DateTime>(
          elements: item,
          order: StickyGroupedListOrder.ASC,
          groupBy: (BuilderItem item) =>
              DateTime(item.date.year, item.date.month, item.date.day),
          groupComparator: (DateTime value1, DateTime value2) =>
              value1.compareTo(value2),
          itemComparator: (BuilderItem item1, BuilderItem item2) =>
              item2.date.compareTo(item1.date),
          floatingHeader: true,
          groupSeparatorBuilder: (BuilderItem item) =>
              SeparatorBuilder(builderItem: item),
          indexedItemBuilder:
              (BuildContext context, BuilderItem item, int index) =>
                  ItemBuilder(
            builderItem: item,
            index: index,
          ),
          itemScrollController: GroupedItemScrollController(),
        );
      },
    );
  }
}
