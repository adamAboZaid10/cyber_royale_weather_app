import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/weather.dart';

abstract class WeatherRepositories {
  Future<Either<Failure, List<Weather>>> getWeather();
}
