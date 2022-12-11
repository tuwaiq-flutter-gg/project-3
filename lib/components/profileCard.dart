import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard(
      {super.key,
      required this.name,
      required this.state,
      this.profileImage = "assets/images/defaultImage.jpg"});
  final String name;
  final String state;
  final String profileImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
          color: Colors.black38,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 40,
            child: Image.asset(profileImage),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                state,
                style: const TextStyle(fontSize: 14),
              )
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          const Icon(
            Icons.settings,
            color: Colors.black45,
          ),
        ],
      ),
    );
  }
}
