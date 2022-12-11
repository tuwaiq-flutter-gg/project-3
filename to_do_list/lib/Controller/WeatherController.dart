import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather/weather.dart';

class WeatherController extends GetxController {
  WeatherFactory wf = WeatherFactory("856822fd8e22db5e1ba48c0e7d69844a");
  String cityName = 'Kongens Lyngby';
  TextEditingController CityNamecontroller = TextEditingController();
  Future<Weather>? w;
  getWeather(String cityName) {
    Future<Weather> w = wf.currentWeatherByCityName(cityName);
  }
}
