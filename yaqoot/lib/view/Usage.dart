import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

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
              tabs: [
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
          body: ListView(
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
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20,left: 20),
                          child: CircleAvatar(
                           backgroundColor: Color.fromARGB(255, 117, 30, 8),
                           radius: 30 ,
                           child: ImageIcon(
                             AssetImage("Image/bell.png"),
                             size: 40,
                             color: Colors.white,
                           ),
                       ),
                        
                        ),
                         Padding(
                           padding: const EdgeInsets.only(right:110),
                           child: Column(children: [
                            Wrap(
                       direction:
                            Axis.vertical, //Vertical or Horizontal any one ooo
                       children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                              'Netflix ',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                             "valid",
                              style: TextStyle(fontSize: 14),
                          ),
                        ),
                           ],)
                           
                       ],),
                         ),
                       Padding(
                         padding: const EdgeInsets.only(top:33,right: 20),
                         child: TextButton(onPressed: (){}, child:Text("change") ),
                       )
                    ],
                  ),
                  
            ]),
              )
          )],
          )),
    );
  }
}
