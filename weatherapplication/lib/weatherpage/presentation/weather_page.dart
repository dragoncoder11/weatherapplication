import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapplication/cubit/get_weather_cubit.dart';
import 'package:weatherapplication/cubit/get_weather_state.dart';
import 'package:weatherapplication/searchpage/presentation/search_page.dart';
import 'package:weatherapplication/weatherpage/presentation/weather_info_body.dart';
import 'package:weatherapplication/weatherpage/presentation/weather_no_body.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body:Container( height: double.infinity,
        width: double.infinity,
        decoration:const BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight,colors: [
            Colors.orange,
            Colors.deepPurple,
            Colors.black,
          ])),

        child: Stack(
      children: [
        BlocBuilder<GetWeatherCubit, WeatherStates>(
          builder: (context, state) {
            if (state is WeatherSuccessState) {
              return WeatherInfoBody();
            } else if (state is WeatherInitialState) {
              return const WeatherNoBody();
            } else {
              return const Center(child: Text('error'));
            }
          },
        ),
          Positioned(top: MediaQuery.of(context).size.height*.05,right: MediaQuery.of(context).size.width*.05,child:  IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return const SearchPage();
            }));
          }, icon:const Icon( Icons.search,color: Colors.white,)),),
          ]),
      ),
    );
  }
}