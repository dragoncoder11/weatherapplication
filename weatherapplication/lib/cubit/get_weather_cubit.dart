import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapplication/cubit/get_weather_state.dart';
import 'package:weatherapplication/models/get_weather_model.dart';
import 'package:weatherapplication/services/get_weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherStates>{
  GetWeatherCubit(initialstate):super(WeatherInitialState());
   late WeatherModel weatherModel;
   
   getweather({required String cityname})async{
    try
    {
        weatherModel=await WeatherServices(dio: Dio()).getCurrentWeather(cityname: cityname);
     emit(WeatherSuccessState());
    }catch(e){
      emit(WeatherFailureState());
     
    }
       return weatherModel;
   }
   
}