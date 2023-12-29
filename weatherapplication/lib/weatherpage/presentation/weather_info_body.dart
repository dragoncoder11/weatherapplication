import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapplication/cubit/get_weather_cubit.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    var weathermodel=BlocProvider.of<GetWeatherCubit>(context).weatherModel;
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        // const SizedBox(height: 80,),
          Image.network(weathermodel.imageurl!),
          const SizedBox(height: 20,),
          Text('${weathermodel.avgtemp}',style: TextStyle(fontSize: 40,color: Colors.white),),
          Text('${weathermodel.weatherstatus}',style: TextStyle(fontSize: 30,color: Colors.white),),
          Text('last updated : ${weathermodel.date?.hour}${weathermodel.date?.minute}',style: TextStyle(fontSize: 25,color: Colors.white),),
           const SizedBox(height: 20,),
           Divider(color: Colors.white.withOpacity(.2),),
           Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
            Row(
              children: [
                Icon(Icons.abc),
                SizedBox(width: 20,),
                 Column(crossAxisAlignment:CrossAxisAlignment.start,
            children: [Text('MaxTemp'),
            Text('${weathermodel.maxtemp}')],
            ),
              ],
            ),
           
           Row(
              children: [
                Icon(Icons.abc),
                SizedBox(width: 20,),
                 Column(crossAxisAlignment:CrossAxisAlignment.start,
            children: [Text('MaxTemp'),
            Text('${weathermodel.mintemp}')],
            ),
              ],
            ),
            

           ],)
      
        ],
      ),
    );
  }
}