import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:perject_3/colorStyle.dart';

class TrendingMembersCard extends StatelessWidget {
  const TrendingMembersCard({super.key, required this.points});
  final String points;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          child: Image.asset(
            "assets/images/defaultImage2.png",
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          points,
          style: TextStyle(color: ColorStyles.onPrimary),
        ),
      ],
    );
  }
}
