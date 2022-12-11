import 'dart:convert';
import 'package:asma_store_projct3/Componants/RowHome.dart';
import 'package:asma_store_projct3/Componants/card.dart';
import 'package:asma_store_projct3/Componants/data.dart';
import 'package:asma_store_projct3/Componants/discount.dart';
import 'package:asma_store_projct3/Componants/searsh.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  // List post = [];
  // Future getPste() async {
  //   var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");

  //   var response = await http.get(url);

  //   var responsebody = jsonDecode(response.body);

  //   post.addAll(responsebody);

  //   print(responsebody);
  // }

  // @override
  // void initState() {
  //   getPste();
  //   // TODO: implement initState
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(children: [
        Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Search(),
          ),
          Container(
            height: 150,
            width: Get.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SectionsMakeUp(
                    image: 'images/5383181.png',
                    name: 'All',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SectionsMakeUp(
                    image: 'images/2460273.png',
                    name: 'lipstick',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SectionsMakeUp(
                    image: 'images/3258600.png',
                    name: 'Eye liner',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SectionsMakeUp(
                    image: 'images/978470.png',
                    name: 'brushes',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SectionsMakeUp(
                    image: 'images/3501241.png',
                    name: 'groups',
                  ),
                ),
              ],
            ),
          ),
          Discount(),
          Column(
            children: [
              Row(
                children: [
                  CardProdct(
                    Pric: "\$33",
                    image: "images/open-uri20171223-4-11ptefh.png",
                    name: "Multi Purpose Powder",
                  ),
                  CardProdct(
                    Pric: "\$33",
                    image: "images/open-uri20180630-4-n6wb0y.jpeg",
                    name: "Multi Purpose Powder",
                  )
                ],
              ),
              Row(
                children: [
                  CardProdct(
                    Pric: "\$15",
                    image: "images/open-uri20171223-4-zp7vbi.jpeg",
                    name: "Multi Purpose Powder",
                  ),
                  CardProdct(
                    Pric: "33",
                    image: "images/open-uri20180630-4-n6wb0y.jpeg",
                    name: "Multi Purpose Powder",
                  )
                ],
              )
            ],
          )
        ]),
      ]),
    ));
  }
}



// ListView.builder(
//           itemCount: post.length,
//           itemBuilder: (context, i) {
//             return Text(post[i]["title"]);
//           }),
