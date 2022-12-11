import 'package:asma_store_projct3/Componants/buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class shoppingCart extends StatelessWidget {
  const shoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(20),
                height: 130,
                width: Get.width - 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 248, 245, 235),
                          borderRadius: BorderRadius.circular(25)),
                      child: SizedBox(
                          child: Image.asset(
                        "images/open-uri20180630-4-n6wb0y.jpeg",
                        fit: BoxFit.contain,
                      )),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Text(
                            "Multi Purpose Powder",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 150),
                          child:
                              Text("\$ 16.00", style: TextStyle(fontSize: 20)),
                        )
                      ],
                    ),
                    Text(
                      " + 1 -",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, right: 20, left: 20, bottom: 10),
              child: Container(
                padding: EdgeInsets.all(20),
                height: 130,
                width: Get.width - 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 248, 245, 235),
                          borderRadius: BorderRadius.circular(25)),
                      child: SizedBox(
                          child: Image.asset(
                        "images/open-uri20171223-4-11ptefh.png",
                      )),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Text(
                            "Multi Purpose Powder",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 150),
                          child:
                              Text("\$ 16.00", style: TextStyle(fontSize: 20)),
                        )
                      ],
                    ),
                    Text(
                      " + 1 -",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: mineButtom(
                  text: "Buy now ",
                  onTap: () {},
                ))
          ],
        )
      ]),
    );
  }
}
