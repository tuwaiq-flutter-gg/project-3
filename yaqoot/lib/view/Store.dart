import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:yaqoot/components/containar_Best_offer.dart';
import 'package:yaqoot/components/container_Do_this.dart';

class Store_tap extends StatelessWidget {
  const Store_tap({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 4,
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
                    "Gifts",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                Tab(
                  child: Text(
                    "Packages",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                 Tab(
                  child: Text(
                    "Add-one",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
                 Tab(
                  child: Text(
                    "Devices",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children:[
             Store(),
             Packages()
             
            ] 
          )),
    );
  }
}
class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color.fromARGB(255, 221, 220, 220),
      body: ListView(
        scrollDirection: Axis.vertical,
      children: [
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 40),
         child: Container(
          height: Get.height,
          width:Get.width,
           child:GridView.count(crossAxisCount:2,
           scrollDirection: Axis.vertical,
           controller:  ScrollController(keepScrollOffset: false),
          shrinkWrap: true,

          
           children: [
          Producer(pris: "34",datals: "Gift an unlimited app",name: "unlimited app",img: "Image/SO.jpeg",time: "3 day"),
          Producer(pris: "57",datals: "Gift an unlimited app",name: "unlimited app",img: "Image/SO.jpeg",time: "7 day"),
           Producer(pris: "100",datals: "For online game ,stem 20U.S.D card will do the trick",name: "Stem card",img: "Image/stem.jpeg",),
            Producer(pris: "150",datals: "For online game ,stem 30U.S.D card will do the trick",name: "Stem card",img: "Image/stem.jpeg",),
           Producer(pris: "200",datals: "For online game ,stem 50U.S.D card will do the trick",name: "Stem card",img: "Image/stem.jpeg",),
            Producer(pris: "380",datals: "For online game ,stem 100U.S.D card will do the trick",name: "Stem card",img: "Image/stem.jpeg",),
             Producer(pris: "89",datals: "Gift an unlimited app",name: "unlimited app",img: "Image/SO.jpeg",time: "21 day"),
              Producer(pris: "100",datals: "Gift an unlimited app",name: "unlimited app",img: "Image/SO.jpeg",time: "26 day"),
           ],
           ),
       )
       )
      ],
    ),
    );
  }
}
class Packages extends StatelessWidget {
  const Packages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 221, 220, 220),
        body:ListView(
          scrollDirection: Axis.vertical,
          children: [
             Column(
               children: [
                P_C(Time: "80 SAR/month",img: "1X",name: "price",Colors1: Color.fromARGB(255, 124, 21, 13)),
                P_C(Time: "120 SAR/month",img: "3X",name: "price",Colors1: Color.fromARGB(255, 124, 21, 13)),
                P_C(Time: "200 SAR/month",img: "5X",name: "price",Colors1: Color.fromARGB(255, 124, 21, 13)),
                P_C(Time: "200 SAR/month",img: "Trace",name: "price",Colors1: Color.fromARGB(255, 10, 109, 114),icon: Icons.location_on_outlined,),
                
               ],
             ),
        ]) ,
    );
  }
}