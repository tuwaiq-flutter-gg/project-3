import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:to_do_list/Comp/ButtonForm.dart';
import 'package:to_do_list/Comp/TextField.dart';
import 'package:to_do_list/Controller/WeatherController.dart';
import 'package:weather/weather.dart';

class WeatherForecast extends StatelessWidget {
  WeatherForecast({super.key});

  WeatherController controller = Get.put(WeatherController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Weather API",
          style: TextStyle(color: Color(0xff9088D4)),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xffE7E6F5),
        
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          textfield(Title: "CityName", con: controller.CityNamecontroller),
          button(
              title: "GetForecast",
              onPressed: () {
                controller.getWeather(controller.CityNamecontroller.toString());
              }),
          Text(controller.w.toString())
        ],
      ),
    );
  }
}
