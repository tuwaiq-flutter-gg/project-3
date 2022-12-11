
import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:teatime/constant.dart';

class CustomSlideButton extends StatelessWidget {
   CustomSlideButton({
    super.key,
    this.text,
    this.slideIcon,
    this.onSubmit,
  });
  String? text;
  String? slideIcon;
  Function()? onSubmit;

  @override
  Widget build(BuildContext context) {
    return SlideAction(
      sliderButtonIconPadding: 10,
      height: 55,
      elevation: 0,
      borderRadius: 5,
      onSubmit: onSubmit,
      outerColor: lightColor.withOpacity(0.5),
      innerColor: lightColor,
      sliderButtonIcon: ImageIcon(AssetImage(slideIcon.toString()),color: primaryTextColor.withOpacity(0.8)),
      
      textStyle: TextStyle(color: primaryTextColor, fontSize: 14),
      text: text.toString(),
    );
  }
}
