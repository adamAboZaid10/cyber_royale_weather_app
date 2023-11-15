import 'package:flutter/material.dart';

import '../../../../core/utlis/asset_data.dart';
import 'custom_degree_and_text_widget.dart';
import 'location_city_name_widget.dart';

class CustomContainerDetails extends StatelessWidget {
  const CustomContainerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: 396,
        height: 143,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffECABFC),
                Color(0xff3D1680),
              ]),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomDegreeAndTextWidget(),
                  const Text(
                    'Friday, 3 NOV 2023| 10:00',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                  ),
                  LocationCityNameWidget(
                    size: 12,
                  ),
                ],
              ),
              SizedBox(
                width: 150,
                height: 199,
                child: Image.asset(AssetsData.winterImage),
              )
            ],
          ),
        ),
      ),
    );
  }
}
