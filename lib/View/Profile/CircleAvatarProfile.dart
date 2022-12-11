import 'package:flutter/material.dart';
import 'package:teatime/constant.dart';

class CircleAvatarProfile extends StatelessWidget {
  const CircleAvatarProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 115,
      child: CircleAvatar(
        radius: 60,
        backgroundColor: lightColor.withOpacity(0.2),
        child: CircleAvatar(
          radius: 50,
          backgroundColor: greenColor,
          child: CircleAvatar(
            radius: 46,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("images/splash/splash.png"),
          ),
        ),
      ),
    );
  }
}
