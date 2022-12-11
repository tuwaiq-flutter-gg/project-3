import 'package:flutter/material.dart';
import 'package:perject_3/colorStyle.dart';

class SecondCard extends StatelessWidget {
  const SecondCard({
    super.key,
    required this.mainText,
    required this.state,
    required this.icnoName,
  });
  final String mainText;
  final String state;
  final IconData icnoName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(
        width: 0.5,
        color: Colors.black38,
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            icnoName,
            color: ColorStyles.onPrimary,
            size: 40,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mainText,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                state,
                style: const TextStyle(fontSize: 14),
              )
            ],
          ),
          SizedBox(
            width: 60,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "VIEW",
              style: TextStyle(color: ColorStyles.onPrimary),
            ),
          )
        ],
      ),
    );
  }
}
