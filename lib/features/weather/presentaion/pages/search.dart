import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/data_sources/weatherremotedatasources.dart';
import '../../data/models/weather_model.dart';
import '../busines_logic/cubit/weather_cubit.dart';
import '../widgets/bottomnavigation.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  String? cityName;

  SearchPage({super.key});

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
      child: SafeArea(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                Text(
                  "qena,egypt",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Text("")
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                onChanged: (data) {
                  cityName = data;
                },
                onSubmitted: (data) async {
                  BlocProvider.of<WeatherCubit>(context)
                      .getWeather(cityName: cityName!);
                  BlocProvider.of<WeatherCubit>(context).cityName = cityName;
                  BlocProvider.of<WeatherCubit>(context).index = 0;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (build) => const BottomNav()));
                },
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 24),
                  label: const Text('search'),
                  suffixIcon: GestureDetector(
                      onTap: () async {
                        WeatherService service = WeatherService();

                        WeatherModel? weather =
                            await service.getWeather(cityName: cityName!);

                        // ignore: use_build_context_synchronously
                        BlocProvider.of<WeatherCubit>(context, listen: false)
                            .weatherModel = weather;
                        // ignore: use_build_context_synchronously
                        BlocProvider.of<WeatherCubit>(context, listen: false)
                            .cityName = cityName;

                        // ignore: use_build_context_synchronously
                        BlocProvider.of<WeatherCubit>(context).index = 0;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (build) => const BottomNav()));
                      },
                      child: const Icon(Icons.search)),
                  border: const OutlineInputBorder(),
                  hintText: 'Enter a city',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
