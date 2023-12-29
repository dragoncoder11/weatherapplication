import 'package:dio/dio.dart';
import 'package:weatherapplication/models/get_weather_model.dart';
class WeatherServices{
  final Dio dio;

  WeatherServices({required this.dio});
  Future<WeatherModel> getCurrentWeather({required String cityname})async{
    Response response = await dio.get('http://api.weatherapi.com/v1/forecast.json?key=8ea50bb3c8eb49858da212941232612&q=$cityname&days=7&aqi=no&alerts=no');
    WeatherModel weatherModel=WeatherModel.fromJson(response.data);
    return weatherModel;
  }
}