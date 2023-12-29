import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class WeatherNoBody extends StatelessWidget {
  const WeatherNoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
          Lottie.asset('assets/ss.json'),
                 const Text('No Weather Yet',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)
                ],
          
              
              ),
        );
  }
}