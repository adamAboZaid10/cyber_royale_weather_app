part of 'weather_cubit.dart';

sealed class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {}

// ignore: must_be_immutable
class WeatherSuccess extends WeatherState {
  WeatherModel weatherModel;
  WeatherSuccess({required this.weatherModel});
}

class WeatherLoading extends WeatherState {}

class WeatherFailure extends WeatherState {}

class WeatherChange extends WeatherState {}
