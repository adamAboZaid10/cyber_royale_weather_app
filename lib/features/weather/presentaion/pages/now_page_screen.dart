import 'package:flutter/material.dart';

import '../widgets/details_now_body.dart';

class DetailsNowScreen extends StatelessWidget {
  const DetailsNowScreen({Key? key}) : super(key: key);

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
        body: DetailsNowBody(),
      ),
    );
  }
}
