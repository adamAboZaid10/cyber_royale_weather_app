import 'package:flutter/material.dart';

import '../../../../core/utlis/asset_data.dart';

class CustomItemListView extends StatelessWidget {
  const CustomItemListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 84,
      height: 198,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xffECABFC),
              Color(0xff3D1680),
            ]),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '22 C',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            SizedBox(
                width: 53,
                height: 53,
                child: Image.asset(AssetsData.winterImage)),
            const Text(
              'Now',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
