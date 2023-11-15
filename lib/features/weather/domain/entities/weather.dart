import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Weather extends Equatable {
  DateTime date;
  double temp;
  double maxTemp;
  double minTemp;
  String weatherStateName;

  Weather(
      {required this.date,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherStateName});

  @override
  List<Object?> get props => [date, temp, maxTemp, minTemp, weatherStateName];
}
