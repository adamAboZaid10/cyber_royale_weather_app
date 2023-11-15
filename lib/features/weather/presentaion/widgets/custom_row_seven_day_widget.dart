import 'package:flutter/material.dart';

import '../pages/seven_days_forecast_screen.dart';

class CustomRowSevenDayWidgetNavigat extends StatelessWidget {
  const CustomRowSevenDayWidgetNavigat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 279,
      height: 58,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [
              Color(0xff103F80),
              Color(0xffECABFC),
            ],
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 17.0, horizontal: 18),
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SevenDaysView()));
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('7 days forecast'),
              Icon(
                Icons.arrow_forward_ios,
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
