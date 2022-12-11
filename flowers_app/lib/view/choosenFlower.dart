import 'package:flowers_app/components/custButton.dart';
import 'package:flowers_app/components/flowerInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';

class InfoFlower1 extends StatelessWidget {
  const InfoFlower1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: flowerInfo(
            image: "images/FullOfLove.png",
            flowerName: "Full Of Love",
            flowerComponent:
                " purple roses and pink alstromerias with green asparagus fern",
            aboutFlower:
                "Height: 35 Cmwidth: 30 Cm Created by our artistic florists to brighten up any space with its beautiful presence, or simply to give away as a gift to your beloved ones"));
  }
}

class InfoFlower2 extends StatelessWidget {
  const InfoFlower2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: flowerInfo(
            image: "images/SmallHappiness.png",
            flowerName: "Small Happiness",
            flowerComponent: "Hydrangea and Baby Rose",
            aboutFlower: "a bouquet contains Hydrangea and Baby Rose"));
  }
}

class InfoFlower3 extends StatelessWidget {
  const InfoFlower3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: flowerInfo(
            image: "images/FruitsOfLove.png",
            flowerName: "Fruits of Love",
            flowerComponent: "red roses, red  baby roses and eucalyptus.",
            aboutFlower:
                "Height: 30 Cmwidth: 25 Cm Hope, adoration, appreciation are auras that can be found in this assortment of 15 red roses, 15 red  baby roses and eucalyptus."));
  }
}

class InfoFlower4 extends StatelessWidget {
  const InfoFlower4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: flowerInfo(
          image: "images/ClassicHydrangea.png",
          flowerName: "Dena's Classic Hydrangea",
          flowerComponent: "roses, baby roses, and Hydrangea",
          aboutFlower:
              "Height: 40 Cmwidth: 40 Cm Having a hard time deciding which flowers to send your friend? This unique bouquet of roses, baby roses, and Hydrangea will surely put a smile on their face!"),
    );
  }
}

class InfoFlower5 extends StatelessWidget {
  const InfoFlower5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: flowerInfo(
            image: "images/Optimism.png",
            flowerName: "Beginning of Optimism",
            flowerComponent: "white lily with yellow alstroemeria ",
            aboutFlower:
                "Height: 45 Cmwidth: 30 Cm Vase contains white lily with yellow alstroemeria "));
  }
}

class InfoFlower6 extends StatelessWidget {
  const InfoFlower6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: flowerInfo(
            image: "images/RosyPetals.png",
            flowerName: "Rosy Petals",
            flowerComponent: "Collection Of Tulips",
            aboutFlower:
                "Height: 20 Cmwidth: 15 Cm Know someone that loves pink? Then this is the perfect gift to send them."));
  }
}
