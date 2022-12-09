import 'package:flutter/material.dart';

class Rwos_Of_apps extends StatelessWidget {
  const Rwos_Of_apps({super.key, required this.img, required this.name, required this.Date});
  final String img;
  final String name;
  final String Date;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: CircleAvatar(
            
            radius: 35,
            child: Image.asset(img.toString()),
            
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 110),
          child: Column(
            children: [
              Wrap(
                direction: Axis.vertical, //Vertical or Horizontal any one ooo
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      name.toString(),
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      Date.toString(),
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 33, right: 20),
          child: TextButton(onPressed: () {}, child: Text("change")),
        )
      ],
    );
  }
}
