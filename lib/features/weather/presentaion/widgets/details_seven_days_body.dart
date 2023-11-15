import 'package:flutter/material.dart';

import 'custom_containerLowHealth.dart';
import 'custom_listview_widget.dart';
import 'custom_sun_rise_widget.dart';
import 'location_city_name_widget.dart';

class DetailsSevenDaysBody extends StatelessWidget {
  const DetailsSevenDaysBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
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
                  const SizedBox(width: 40),
                  LocationCityNameWidget(size: 20),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '7 - Days Forecast',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomListViewWidget(),
            const SizedBox(
              height: 59,
            ),
            const CustomContainerLowHealth(),
            const SizedBox(
              height: 36,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSunRiseWidget(
                  sunsetTime: 'sunset: 7.25 PM',
                  sunRiseOr: 'Sun Rise',
                  timeOr: '5:28 AM',
                ),
                const SizedBox(
                  width: 20,
                ),
                CustomSunRiseWidget(
                  sunsetTime: '',
                  sunRiseOr: 'UV INDEX',
                  timeOr: '4 Moderate',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
