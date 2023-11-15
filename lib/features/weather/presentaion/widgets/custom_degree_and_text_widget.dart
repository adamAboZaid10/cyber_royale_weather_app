import 'package:flutter/material.dart';

import '../../data/models/weather_model.dart';

class CustomDegreeAndTextWidget extends StatelessWidget {
  const CustomDegreeAndTextWidget({Key? key, this.weatherData})
      : super(key: key);
  final WeatherModel? weatherData;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 3,
          ),
          child: Text(
            // weatherData!.temp.toInt().toString(),
            "22",
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          'o',
          style: TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
