import 'package:delivery_food_app/constants/values.dart';
import 'package:delivery_food_app/pages/app_layout.dart';
import 'package:delivery_food_app/pages/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'Food Delivry',
        showSemanticsDebugger: false,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.amber,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: mainColor,
            elevation: 20.0,
          ),
        ),
        home: AppLayout(),
      );
    
  }
}
