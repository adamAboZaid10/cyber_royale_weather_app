import 'package:flutter/material.dart';

import 'custom_item_list_view.dart';

class CustomListViewWidget extends StatelessWidget {
  const CustomListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
                  width: 20,
                ),
            scrollDirection: Axis.horizontal,
            itemCount: 20,
            itemBuilder: (context, index) => const CustomItemListView()),
      ),
    );
  }
}
