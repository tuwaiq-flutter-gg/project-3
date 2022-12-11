import 'package:flowers_app/components/custButton.dart';
import 'package:flowers_app/components/custText.dart';
import 'package:flowers_app/components/custTitle.dart';
import 'package:flowers_app/view/thanks.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class total extends StatelessWidget {
  final name;
  final price;
  final totalPrice;

  const total(
      {super.key,
      required this.price,
      required this.totalPrice,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color.fromARGB(255, 241, 234, 237)),
          height: Get.height / 3,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: title(titleText: "Price Details"),
                ),
                Container(
                    padding: EdgeInsets.only(
                      right: 50,
                      left: 50,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customText(text: name),
                              customText(text: price)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customText(text: "Delivery"),
                              customText(text: "\$ 5.00 ")
                            ],
                          ),
                        ),
                        Container(
                          height: 1,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              totalText(text: "Total Price"),
                              totalText(text: totalPrice)
                            ],
                          ),
                        ),
                      ],
                    )),
                custButton(
                    press: () {
                      Get.to(thanks(
                        title: '',
                      ));
                    },
                    text: "Next")
              ]),
        ),
      ],
    );
  }
}
