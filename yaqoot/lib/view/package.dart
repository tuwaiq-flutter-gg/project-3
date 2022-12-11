import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Package extends StatelessWidget {
  const Package({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 221, 220, 220),
          appBar: AppBar(
            title: Text("Package & codes",style: TextStyle(color: Colors.black,fontSize: 28),),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
            bottom: TabBar(
              indicatorColor: Colors.black,
              
              tabs:[
                Tab(
                  child: Text(
                    "Your Package",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                Tab(
                  child: Text(
                    "promo codes",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children:[
             You_Package(),
             Promo_code()
            ] 
          )),
    );
  }
}
class You_Package extends StatelessWidget {
  const You_Package({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(children: [
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
           child: Container(
            height: 150,
            width: Get.width,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            color: Color(0xffFFFFFF)
            ),
            child: Align(alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("1X",style: TextStyle(fontSize: 20),)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("80 SAR /30days",style: TextStyle(fontSize: 16),),
                        TextButton(onPressed: (){}, child: Text("Change"))
                      ],
                      
                    ),
                    Align(alignment: Alignment.centerLeft,
                      child: Text("Expires on 31/12/2022")),
                    Text(""),
                    Align(alignment: Alignment.centerLeft,
                      child:
                    Text("5955547454",style: TextStyle(fontSize: 20)))
                  ],
                ),
              ),
            ),
           ),
         )
      ]),
    );
  }
}
class Promo_code extends StatelessWidget {
  const Promo_code({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(top: 40,left: 10),
          child: Text("Add promo code",style: TextStyle(fontSize: 20),),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
            child: Padding(
              padding: const EdgeInsets.only(top: 10,right: 100,left: 10),
              child: new TextField(
                decoration:  InputDecoration(filled:true,fillColor: Color(0xffFFFFFF)),
           
              ),
            ),
          ),
           Padding(
             padding: const EdgeInsets.only(top: 20,right: 10),
             child: TextButton.icon(onPressed: (){}, icon: Icon(Icons.add), label: Text("Add")),
           )
          ],
        )
      ]),
    );
  }
}
