import 'package:flutter/material.dart';

import '../pages/now_page_screen.dart';

class TwoButtonWidget extends StatelessWidget {
  const TwoButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 292,
      height: 61,
      decoration: BoxDecoration(
          color: const Color(0xff836CAA),
          borderRadius: BorderRadius.circular(20)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DetailsNowScreen()));
          },
          child: const Text(
            'Today',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DetailsNowScreen()));
          },
          child: const Text(
            'Tomorrow',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
        ),
      ]),
    );
  }
}
