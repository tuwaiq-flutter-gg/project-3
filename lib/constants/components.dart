import 'dart:math';

import 'package:delivery_food_app/constants/values.dart';
import 'package:flutter/material.dart';

// Navigate component
void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);

Widget defaultTextButton({
  required Function function,
  required String text,
}) =>
    TextButton(
      onPressed: () {
        function;
      },
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          color: mainColor,
        ),
      ),
    );