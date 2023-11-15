// import 'package:dartz/dartz.dart';
// import 'package:wether_app/core/errors/exeption.dart';
// import 'package:wether_app/core/errors/failures.dart';
// import 'package:wether_app/core/errors/network/network.dart';
// import 'package:wether_app/features/weather/data/data_sources/weatherremotedatasources.dart';
// import 'package:wether_app/features/weather/data/models/weather_model.dart';
// import 'package:wether_app/features/weather/domain/repositories/weather_repositories.dart';

// class WeatherRepositoriesImp implements WeatherRepositories {
//   final WeatherService weatherRemoteDataSources;
//   final Network network;

//   WeatherRepositoriesImp(this.network,
//       {required this.weatherRemoteDataSources});
//   @override
//   Future<Either<Failure, List<WeatherModel>>> getWeather() async {
//     if (await network.isConcted) {
//       try {
//         final remoteWeather = await weatherRemoteDataSources.getWeather();
//         return right(remoteWeather as List<WeatherModel>);
//       } on ServereExeption {
//         return left(ServerFailure());
//       }
//     }
//     throw UnimplementedError();
//   }
// }
