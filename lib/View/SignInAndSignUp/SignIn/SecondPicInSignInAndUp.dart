
import 'package:flutter/material.dart';

class SecondPicInSignInAndUp extends StatelessWidget {
  const SecondPicInSignInAndUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 340,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
            margin: EdgeInsets.only(top: 0),
            height: 345,
            width: 130,
            child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  "images/SingInAndUp/BackGroundImage1.jpg",
                  fit: BoxFit.fill,
                ))),
      ),
    );
  }
}
