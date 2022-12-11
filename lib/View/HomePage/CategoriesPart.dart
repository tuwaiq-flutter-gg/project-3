
import 'package:flutter/material.dart';
import 'package:teatime/View/Custom/CustomTeaCategories.dart';

import '../../constant.dart';

class CategoriesPart extends StatelessWidget {
  const CategoriesPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomTeaCategories(
                  categoriesTitle: "Herbal Tea",
                  categoriesColor: greenColor),
              CustomTeaCategories(
                  categoriesTitle: "Fruit Tea",
                  categoriesColor: lightColor),
            ],
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Clear",
                    style: TextStyle(color: greenColor),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
