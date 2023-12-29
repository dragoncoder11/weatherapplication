class WeatherModel{
  final String? cityname;
  final String ?imageurl;
  final DateTime? date;
  final double? avgtemp;
  final double? maxtemp;
  final double? mintemp;
  final String? weatherstatus;

  WeatherModel({required this.cityname,  required this.imageurl, required this.date, required this.avgtemp, required this.maxtemp, required this.mintemp, required this.weatherstatus,});
 factory WeatherModel.fromJson(json){
  return WeatherModel(cityname: json["location"]["name"],
   date:DateTime.parse(json["current"]["last_updated"]) ,
    avgtemp: json["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
     maxtemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
      mintemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
       weatherstatus: json["forecast"]["forecastday"][0]["condition"]["text"],
       imageurl: json["forecast"]["forecastday"][0]["condition"]["icon"],);
 }
}