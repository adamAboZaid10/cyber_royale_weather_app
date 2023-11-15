// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../data/data_sources/weatherremotedatasources.dart';
import '../../../data/models/weather_model.dart';
import '../../pages/home_page_screen.dart';
import '../../pages/search.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this.weatherService) : super(WeatherInitial());

  WeatherService weatherService;
  WeatherModel? weatherModel;
  String? cityName;
  int index = 0;

  List<BottomNavigationBarItem> bottonnav = const [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: Colors.white,
        ),
        label: ""),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.data_object_outlined,
          color: Colors.white,
        ),
        label: ""),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.search,
          color: Colors.white,
        ),
        label: ""),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.person,
          color: Colors.white,
        ),
        label: ""),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.notification_important,
          color: Colors.white,
        ),
        label: ""),
  ];
  List<Widget> anyPage = [
    // HomeView(),
    const HomeView(),
    const Text("data"),
    SearchPage(),
    const Text("data"),
    const Text("data"),
  ];
  void chaneIndex(int x) {
    index = x;
    emit(WeatherChange());
  }

  void getWeather({required String cityName}) async {
    emit(WeatherLoading());

    try {
      weatherModel = await weatherService.getWeather(cityName: cityName);
      emit(WeatherSuccess(weatherModel: weatherModel!));
    } catch (e) {
      emit(WeatherFailure());
    }
  }
}
