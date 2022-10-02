import 'package:weaather/data/datasource/remote_datasource.dart';
import 'package:weaather/domain/entities/weather.dart';
import 'package:weaather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDatasource remoteDatasource;
  WeatherRepository(this.remoteDatasource);

  @override
  Future<Weather> getWeatherByCityName(String countryName) async {
    return (await remoteDatasource.gettWeatherByCityName(countryName))!;
  }
}
