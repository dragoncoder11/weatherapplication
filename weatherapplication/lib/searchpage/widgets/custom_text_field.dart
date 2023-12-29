import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapplication/cubit/get_weather_cubit.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        onSubmitted: (value) async{
          var getweathercubit=BlocProvider.of<GetWeatherCubit>(context);
          getweathercubit.getweather(cityname: value);
          Navigator.pop(context);
        },
        decoration: InputDecoration(
          hintText: 'search a city',
          labelText: 'enter cityName',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
          borderSide:const BorderSide(color: Colors.blue,)),
          contentPadding:const EdgeInsets.symmetric(horizontal: 15)
        ),
      ),
    );
  }
}