import '../repositories/weather_repositories.dart';

class GetWeather {
  final WeatherRepositories repositories;
  GetWeather(this.repositories);
  Future call() async {
    await repositories.getWeather();
  }
}
