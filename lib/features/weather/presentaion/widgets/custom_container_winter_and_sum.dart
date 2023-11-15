import 'package:flutter/material.dart';

import '../../../../core/utlis/asset_data.dart';

class ContainerWinterAndSun extends StatelessWidget {
  const ContainerWinterAndSun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 294,
      height: 95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff957DCD),
              Color(0xff523D7F),
            ]),
      ),
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomContainerBodyWidget(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: CustomContainerBodyWidget(),
            ),
            CustomContainerBodyWidget(),
          ],
        ),
      ),
    );
  }
}

class CustomContainerBodyWidget extends StatelessWidget {
  const CustomContainerBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Image.asset(AssetsData.sunImage),
        ),
        const Text(
          '30 %',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        const Text(
          'Precipitation',
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
