import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LocationCityNameWidget extends StatelessWidget {
  LocationCityNameWidget({Key? key, required this.size}) : super(key: key);
  double size;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.location_on_outlined),
        const SizedBox(
          width: 4,
        ),
        Text(
          'Qena , Egypt',
          style: TextStyle(
            fontSize: size,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
