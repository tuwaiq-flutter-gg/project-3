import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teatime/View/HomePage/HomePageHeader.dart';
import 'package:teatime/View/HomePage/InformationTeaCard.dart';
import 'package:teatime/View/HomePage/QuotationPart.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: Get.height * 0.36,
          child: Stack(
            children: [
              HomePageHeader(), 
              QuotationPart(),
              ]),
        ),
        InformationTeaCard()
      ],
    );
  }
}
