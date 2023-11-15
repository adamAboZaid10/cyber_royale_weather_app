import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/weather/data/data_sources/weatherremotedatasources.dart';
import 'features/weather/presentaion/busines_logic/cubit/weather_cubit.dart';
import 'features/weather/presentaion/widgets/bottomnavigation.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => WeatherCubit(WeatherService()),
    child: const WeatherApp(),
  ));
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNav(),
    );
  }
}
