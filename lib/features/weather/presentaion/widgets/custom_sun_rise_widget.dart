import 'package:flutter/material.dart';

import '../../../../core/utlis/asset_data.dart';

// ignore: must_be_immutable
class CustomSunRiseWidget extends StatelessWidget {
  CustomSunRiseWidget(
      {Key? key,
      required this.sunsetTime,
      required this.sunRiseOr,
      required this.timeOr})
      : super(key: key);
  String sunRiseOr;
  String timeOr;
  String sunsetTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 161,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xffECABFC),
              Color(0xff3D1680),
            ],
          )),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 36,
                  height: 36,
                  child: Image.asset(AssetsData.starIcon),
                ),
                Text(
                  sunRiseOr,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Text(
              timeOr,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              sunsetTime,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
