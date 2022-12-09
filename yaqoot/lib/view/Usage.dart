import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:yaqoot/components/Usage/Rows_of_Usahe.dart';
import 'package:yaqoot/view/out_saudi.dart';


class Usage extends StatelessWidget {
  const Usage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 221, 220, 220),
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                    onPressed: (() {}),
                    label: Text(
                      "0594443333",
                      style: TextStyle(color: Colors.black),
                    ),
                    icon: (Icon(
                      Icons.keyboard_arrow_down_sharp,
                      size: 30,
                      color: Colors.black,
                    ))),
              ],
            ),
            bottom: TabBar(
              indicatorColor: Colors.black,
              
              tabs:[
                Tab(
                  child: Text(
                    "In saudi",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                Tab(
                  child: Text(
                    "out of saudi",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children:[
              test(),
              Out_Saudi()
            ] 
          )),
    );
  }
}
class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                  child: Container(
                      height: 220,
                      width: 200,
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffFFFFFF)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 392,
                                alignment: Alignment.topCenter,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(255, 121, 22, 15),
                                ),
                                child: Center(
                                    child: Text(
                                  "1X Package",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 25),
                                )),
                              )
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 70),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 34),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Data: 45GB",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18)),
                                        SizedBox(
                                          width: 100,
                                          child: CircleProgressBar(
                                            foregroundColor: Colors.blue,
                                            backgroundColor: Colors.black12,
                                            value: 0.9,
                                            child: Center(
                                              child: AnimatedCount(
                                                count: 90,
                                                unit: '%',
                                                duration:
                                                    Duration(milliseconds: 200),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                ),
          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 350,
                    width: Get.width,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFFFFFF)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("My unlimited apps"),
                        ),
                        
                   Column(
                    children: [
                      Rwos_Of_apps(name: "N",img: "Image/netflix.png",Date: "2/2/2023",),
                      Rwos_Of_apps(name: "l",img: "Image/snapchat.png",Date: "2/2/2023",),
                      Rwos_Of_apps(name: "l",img: "Image/tiktok.png",Date: "2/2/2023",)
                    ],
                   )
              ]),
                )
            )],
            );
  }
}
