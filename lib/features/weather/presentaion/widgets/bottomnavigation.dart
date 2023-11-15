import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../busines_logic/cubit/weather_cubit.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherCubit, WeatherState>(
      listener: (context, state) {},
      builder: (context, state) {
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
          child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
                onTap: (value) {
                  BlocProvider.of<WeatherCubit>(context).chaneIndex(value);
                },
                currentIndex: BlocProvider.of<WeatherCubit>(context).index,
                backgroundColor: const Color(0xff2E4C68),
                type: BottomNavigationBarType.fixed,
                items: BlocProvider.of<WeatherCubit>(context).bottonnav),
            backgroundColor: Colors.transparent,
            body: BlocProvider.of<WeatherCubit>(context)
                .anyPage[BlocProvider.of<WeatherCubit>(context).index],
          ),
        );
      },
    );
  }
}
