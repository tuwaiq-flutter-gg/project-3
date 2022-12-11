// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:project_3/Data/User.dart';

final ThemeData MyDark = ThemeData(
  brightness: Brightness.dark,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
    ),
  ),
);

final ThemeData MyLight = ThemeData(
  brightness: Brightness.light,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
    ),
  ),
);

User u0 = User(userName: 'test', password: '1234');
User u1 = User(userName: 'Sharif', password: '1234');
User u2 = User(userName: 'Ahmed', password: '1234');
User u3 = User(userName: 'Faisal', password: '1234');
User u4 = User(userName: 'Nora', password: '1234');

List<User> users = [u0, u1, u2, u3, u4];
