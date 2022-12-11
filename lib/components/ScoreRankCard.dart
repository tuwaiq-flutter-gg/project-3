import 'package:flutter/material.dart';

import 'package:perject_3/colorStyle.dart';

class ScoreRankCard extends StatelessWidget {
  const ScoreRankCard({
    super.key,
    required this.leftIcon,
    required this.titel,
    required this.subtile,
  });
  final IconData leftIcon;
  final String titel;
  final String subtile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(color: Color(0x116200EE)),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Icon(
                leftIcon,
                color: ColorStyles.onPrimary,
                size: 50,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titel,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                subtile,
                style: const TextStyle(
                  fontSize: 16,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
