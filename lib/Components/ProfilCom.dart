import 'package:blog/Models/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileCom extends StatelessWidget {
  const ProfileCom(
      {super.key, this.backColor, this.icon, this.iconColor, this.text});
  final backColor;
  final icon;
  final iconColor;
  final text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Center(
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width - 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                    color: backColor,
                    border: Border.all(width: 3, color: backColor),
                    borderRadius: BorderRadius.circular(20)),
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 40,
                ),
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: 20, color: brouwn, fontWeight: FontWeight.w500),
              ),
              Icon(Icons.arrow_forward_ios_outlined)
            ],
          ),
        ),
      ),
    );
  }
}
