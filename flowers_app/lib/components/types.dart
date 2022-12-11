import 'package:flutter/material.dart';

class typeOfItem extends StatelessWidget {
  final circleColor;
  final circleName;
  const typeOfItem(
      {super.key, required this.circleColor, required this.circleName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: circleColor),
            child: Icon(
              Icons.image,
              color: Color(0xff292D32),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(circleName)
      ],
    );
  }
}
