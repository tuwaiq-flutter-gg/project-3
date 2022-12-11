import 'package:flowers_app/components/popular.dart';
import 'package:flowers_app/view/choosenFlower.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class flower1 extends StatelessWidget {
  const flower1({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Get.to(InfoFlower1());
        },
        child: popular(
          boxColor: Color.fromARGB(255, 191, 158, 170),
          image: "images/FullOfLove.png",
          name: "Full Of Love",
          description: "purple roses and pink alstromerias",
          price: "\$60",
        ));
  }
}

class flower2 extends StatelessWidget {
  const flower2({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(InfoFlower2());
      },
      child: popular(
        boxColor: Color.fromARGB(255, 227, 216, 216),
        image: "images/SmallHappiness.png",
        name: "Small Happiness",
        description: "Hydrangea and Baby Rose",
        price: "\$50",
      ),
    );
  }
}

class flower3 extends StatelessWidget {
  const flower3({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(InfoFlower3());
      },
      child: popular(
        boxColor: Color.fromARGB(255, 191, 158, 170),
        image: "images/FruitsOfLove.png",
        name: "Fruits Of Love",
        description: "red roses,baby roses,eucalyptus.",
        price: "\$80",
      ),
    );
  }
}

class flower4 extends StatelessWidget {
  const flower4({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(InfoFlower4());
      },
      child: popular(
        boxColor: Color.fromARGB(255, 227, 216, 216),
        image: "images/ClassicHydrangea.png",
        name: "Dana's Classic Hydrangea",
        description: "roses, baby roses, and Hydrangea",
        price: "\$60",
      ),
    );
  }
}

class flower5 extends StatelessWidget {
  const flower5({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(InfoFlower5());
      },
      child: popular(
        boxColor: Color.fromARGB(255, 191, 158, 170),
        image: "images/Optimism.png",
        name: "Beginning of Optimism",
        description: "white lily with yellow alstroemeria ",
        price: "\$60",
      ),
    );
  }
}

class flower6 extends StatelessWidget {
  const flower6({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(InfoFlower6());
      },
      child: popular(
        boxColor: Color.fromARGB(255, 227, 216, 216),
        image: "images/RosyPetals.png",
        name: "Rosy Petals",
        description: "collection of tulips",
        price: "\$80",
      ),
    );
  }
}
