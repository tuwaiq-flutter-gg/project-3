import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teatime/Controller/http.dart';
import 'package:teatime/View/HomePage/CategoriesPart.dart';
import 'package:teatime/View/HomePage/HomePage.dart';
import 'package:teatime/View/HomePage/SubCustomTeaCategories.dart';
import 'package:teatime/constant.dart';

class QuotationPart extends StatelessWidget {
  QuotationPart({
    super.key,
  });

  Quotes quotes = Get.put(Quotes());
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 70,
      child: Padding(
        padding: const EdgeInsets.all(dPadding),
        child: SizedBox(
          height: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: Get.width,
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 250,
                      decoration: BoxDecoration(
                        color: lightColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(
                            20), 
                      ),
                      child: GetBuilder<Quotes>( //Rebuild Here by Getx
                        builder: (controller) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              quotes.qutes!.toString(),
                              style: const TextStyle(
                                  color: primaryTextColor,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5),
                            ),
                          );
                        },
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        quotes.GetQuotes();
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: lightColor.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20), 
                        ),
                        child: Image.asset(
                          "images/HomPage/tea-cup.png",
                          color: primaryTextColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CategoriesPart(),
              SubCustomTeaCategories(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
