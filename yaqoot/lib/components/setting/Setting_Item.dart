import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Item_Setting extends StatelessWidget {
  const Item_Setting({super.key, required this.name, required this.icon1, this.onTap});
  final String name;
  final String icon1;
  final  Function()? onTap;
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap:onTap ,
        child: Container(
          height: 70,
          width: Get.width,
          decoration: BoxDecoration(
              color: Color(0xffFFFFFF), borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: ImageIcon(
                AssetImage(icon1.toString()),
                  size: 35,
                  color: Color.fromARGB(255, 133, 40, 34),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  name.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
