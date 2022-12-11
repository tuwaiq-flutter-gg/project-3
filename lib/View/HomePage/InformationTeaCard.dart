import 'package:flutter/material.dart';
import 'package:teatime/Data/Product.dart';
import 'package:teatime/View/HomePage/TeaCard.dart';
import '../../constant.dart';

class InformationTeaCard extends StatelessWidget {
  const InformationTeaCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(dPadding - 10),
      child: SizedBox(
        width: 500,
        child: Center(
          child: Wrap(
              direction: Axis.horizontal,
              children: List.generate(
                  product.length,
                  (index) => TeaCard(
                        teaName: product[index]["teaName"],
                        teaImage: product[index]["teaImage"],
                        teaPrice:
                            double.parse(product[index]["teaPrice"].toString()),
                      ))),
        ),
      ),
    );
  }
}
