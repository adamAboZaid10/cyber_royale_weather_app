import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/utlis/asset_data.dart';
import '../../data/models/weather_model.dart';
import '../busines_logic/cubit/weather_cubit.dart';
import 'custom_container_winter_and_sum.dart';
import 'custom_degree_and_text_widget.dart';
import 'custom_listview_widget.dart';
import 'custom_tow_button_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        if (state is WeatherLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is WeatherSuccess) {
          return Success();
        } else if (state is Failure) {
          return const Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'there is no weather 😔 ',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  'try again 🔍',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )
              ],
            ),
          );
        } else {
          return defaultbody();
        }
      },
    );
  }
}

class Success extends StatelessWidget {
  const Success({
    super.key,
    this.weatherData,
  });
  final WeatherModel? weatherData;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              BlocProvider.of<WeatherCubit>(context).cityName!,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 29.0, bottom: 18),
              child: SizedBox(
                width: 226,
                height: 176,
                child:
                    //  Text(
                    //   weatherData!.weatherStateName,
                    //   style: const TextStyle(
                    //     fontSize: 32,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    Image.asset(AssetsData.winterImage),
              ),
            ),
            const CustomDegreeAndTextWidget(),
            const Text(
              'Friday, 3 NOV 2023| 10:00',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
            ),
            const SizedBox(
              height: 16,
            ),
            const ContainerWinterAndSun(),
            const SizedBox(
              height: 24,
            ),
            const TwoButtonWidget(),
            const SizedBox(
              height: 41,
            ),
            const CustomListViewWidget(),
            const SizedBox(
              height: 47,
            ),
          ],
        ),
      ),
    );
  }
}

class defaultbody extends StatelessWidget {
  const defaultbody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'there is no weather 😔 start',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            'searching now 🔍',
            style: TextStyle(
              fontSize: 30,
            ),
          )
        ],
      ),
    );
  }
}
