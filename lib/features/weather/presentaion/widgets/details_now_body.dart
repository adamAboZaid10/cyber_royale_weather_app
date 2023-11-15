import 'package:flutter/material.dart';

import 'custom_circular_percent_indicator.dart';
import 'custom_container_details_widget.dart';
import 'custom_listview_widget.dart';
import 'custom_row_seven_day_widget.dart';

class DetailsNowBody extends StatelessWidget {
  const DetailsNowBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ),
            ),
            const CustomContainerDetails(),
            const SizedBox(
              height: 23,
            ),
            const CustomListViewWidget(),
            const SizedBox(
              height: 30,
            ),
            const CustomCircularPercentIndicator(),
            const SizedBox(
              height: 43,
            ),
            const CustomRowSevenDayWidgetNavigat(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
