
import 'package:flutter/material.dart';
import 'package:teatime/constant.dart';

class CustomTeaCategories extends StatelessWidget {
  CustomTeaCategories({
    super.key,
    this.categoriesTitle,
    this.categoriesColor
  });
  String? categoriesTitle;
  Color? categoriesColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        alignment: Alignment.center,
        height: 30,
        width: 110,
        decoration: BoxDecoration(
            color: categoriesColor!.withOpacity(0.3),
            borderRadius: BorderRadius.circular(30)),
        child: Text(categoriesTitle.toString(), style: TextStyle(color: primaryTextColor),),
      ),
    );
  }
}
