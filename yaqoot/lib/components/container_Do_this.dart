import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Do_This extends StatelessWidget {
  const Do_This(
      {super.key,
      required this.siez_of_ImageIcon,
      required this.height_of_cont,
      required this.name,
      required this.Time,
      required this.Size_CircleAvatar,
      required this.img});
  final double siez_of_ImageIcon;
  final double height_of_cont;
  final String name;
  final String Time;
  final double Size_CircleAvatar;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 9, right: 9, top: 5),
      child: Container(
          height: height_of_cont.toDouble(),
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffFFFFFF),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 117, 30, 8),
                  radius: Size_CircleAvatar.toDouble(),
                  child: ImageIcon(
                    AssetImage(img.toString()),
                    size: siez_of_ImageIcon.toDouble(),
                    color: Colors.white,
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 10),
                    child: Wrap(
                      direction:
                          Axis.vertical, //Vertical or Horizontal any one ooo
                      children: [
                        Text(
                          'you sent a wonderful gift to $name',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          Time.toString(),
                          style: TextStyle(fontSize: 12),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Icon(
                                Icons.keyboard_arrow_down_sharp,
                                size: 30,
                                color: Colors.blue,
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

class P_C extends StatelessWidget {
  const P_C(
      {super.key,
      required this.name,
      required this.Time,
      required this.img,
      this.icon, this.Colors1, this.icon2});

  final String name;
  final String Time;
  final IconData? icon;
  final String img;
  final Color? Colors1;
  final IconData? icon2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 9, right: 9, top: 10),
      child: Container(
          height: 98,
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffFFFFFF),
          ),
          child: Row(
            children: [
              Container(
                  height: Get.height / 3,
                  width: Get.width / 2.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors1,
                  ),
                  child: Center(
                      child: Row(
                   
                    children: [
                      Icon(icon,size: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          img,
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      Icon(icon2,size: 40,),
                    ],
                  ))),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Wrap(
                      direction:
                          Axis.vertical, //Vertical or Horizontal any one ooo
                      children: [
                        Text(
                          "",
                          style: TextStyle(
                            fontSize: 7,
                          ),
                        ),
                        Text(
                          "",
                          style: TextStyle(
                            fontSize: 5,
                          ),
                        ),
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 11,
                          ),
                        ),
                        Text(
                          Time.toString(),
                          style: TextStyle(fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130),
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: TextButton(
                                child: Text(
                                  "Voice package",
                                  style: TextStyle(fontSize: 11),
                                ),
                                onPressed: () {},
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
    ;
  }
}
