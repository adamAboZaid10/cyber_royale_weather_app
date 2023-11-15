import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../core/utlis/asset_data.dart';

class CustomCircularPercentIndicator extends StatelessWidget {
  const CustomCircularPercentIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      startAngle: 140,
      backgroundColor: const Color(0xffE83ACC),
      progressColor: const Color(0xff2E4C68),
      radius: 120,
      lineWidth: 7.0,
      percent: 0.2,
      center: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'TODAY',
              style: TextStyle(fontSize: 17),
            ),
            const SizedBox(
              height: 17,
            ),
            SizedBox(
              width: 47.7,
              height: 71.2,
              child: Image.asset(AssetsData.arrowIcon),
            ),
            const Text(
              '300',
              style: TextStyle(fontSize: 33, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
