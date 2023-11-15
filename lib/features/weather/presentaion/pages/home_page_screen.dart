import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../busines_logic/cubit/weather_cubit.dart';
import '../widgets/home_view_body_screen.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
          child: const Scaffold(
              backgroundColor: Colors.transparent, body: HomeViewBody()),
        );
      },
    );
  }
}
