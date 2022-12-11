
import 'package:flutter/material.dart';

class FirstPicInSignInAndUp extends StatelessWidget {
  const FirstPicInSignInAndUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 340,
      child: Container(
          margin: EdgeInsets.only(top: 330),
          // color: Colors.red,
          height: 400,
          width: 130,
          child: Opacity(
              opacity: 0.3,
              child: Image.asset(
                "images/SingInAndUp/BackGroundImage1.jpg",
                fit: BoxFit.fill,
              ))),
    );
  }
}
