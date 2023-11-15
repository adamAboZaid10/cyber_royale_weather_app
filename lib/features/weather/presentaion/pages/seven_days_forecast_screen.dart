import 'package:flutter/material.dart';

import '../widgets/details_seven_days_body.dart';

class SevenDaysView extends StatelessWidget {
  const SevenDaysView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xffE83ACC),
              Color(0xff2E4C68),
            ]),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: DetailsSevenDaysBody(),
      ),
    );
  }
}
