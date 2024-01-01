import 'package:dio/dio.dart';
import 'package:weatherapplication/models/get_weather_model.dart';
class WeatherServices{
  final Dio dio;

  WeatherServices({required this.dio});
  Future<WeatherModel> getCurrentWeather({required String cityname})async{
    Response response = await dio.get('https://api.weatherapi.com/v1/history.json?key=d9943e57bd19434eb96211210232912&q=$cityname&dt=today');
    WeatherModel weatherModel=WeatherModel.fromJson(response.data);
    return weatherModel;
  }
}