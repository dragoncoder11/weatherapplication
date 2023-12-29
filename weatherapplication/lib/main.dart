import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weatherapplication/cubit/get_weather_cubit.dart';
import 'package:weatherapplication/cubit/get_weather_state.dart';
import 'package:weatherapplication/weatherpage/presentation/weather_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider<GetWeatherCubit>(
      create: (context) => GetWeatherCubit(WeatherInitialState),
      child:const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WeatherPage(),
      ),
    );
  }
}