import 'package:flutter/material.dart';
import 'package:project_3/Assest/Colors.dart';
import 'package:project_3/Comp/Cusstom%20Comp/Digital%20Products.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "CARD TRANSACTIONS",
                        style: TextStyle(fontSize: 18, color: GrayColor),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "See All",
                            style: TextStyle(color: OrngColor),
                          )),
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    DigitalProducts(
                        productImage: "images/Friendi.png",
                        productName: "FRiENDi",
                        productPrice: 20),
                    DigitalProducts(
                        productImage: "images/Noon.png",
                        productName: "Noon",
                        productPrice: 250),
                    DigitalProducts(
                        productImage: "images/Steam.png",
                        productName: "Steam Wallet",
                        productPrice: 100),
                    DigitalProducts(
                        productImage: "images/Huawei.png",
                        productName: "Huawei",
                        productPrice: 150),
                    DigitalProducts(
                        productImage: "images/Roblox.png",
                        productName: "Roblox",
                        productPrice: 50),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
