import 'package:flutter/material.dart';

class CustomContainerLowHealth extends StatelessWidget {
  const CustomContainerLowHealth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: 352,
        height: MediaQuery.of(context).size.height * .3,
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
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.safety_check),
                  Text('AIR QUALITY'),
                ],
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                '3-Low Health Risk',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Divider(
                  thickness: 2,
                  color: Color(0xffECABFC),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'See More',
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
