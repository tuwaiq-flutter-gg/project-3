import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:perject_3/colorStyle.dart';

class LeaderboardCard extends StatelessWidget {
  const LeaderboardCard(
      {super.key,
      required this.number,
      required this.point,
      required this.rank});
  final int number; // ! jsut for example
  final String point;
  final String rank;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                rank,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              CircleAvatar(
                radius: 30,
                child: Image.asset(
                  "assets/images/defaultImage2.png",
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Member $number"),
                  const Text(
                    "Status",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                point,
                style: const TextStyle(
                  fontSize: 20,
                  color: ColorStyles.onPrimary,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          const Divider(
            color: Colors.black54,
          )
        ],
      ),
    );
  }
}
