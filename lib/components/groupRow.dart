import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GroupRow extends StatelessWidget {
  const GroupRow({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              child: Image.asset(
                "assets/images/defaultImage2.png",
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(name),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 10,
          ),
          child: Divider(
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
