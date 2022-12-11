import 'package:flutter/widgets.dart';
import 'package:teatime/View/Custom/CustomTeaCategories.dart';
import '../../constant.dart';

class SubCustomTeaCategories extends StatelessWidget {
  const SubCustomTeaCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CustomTeaCategories(
                categoriesTitle: "Mint Tea", categoriesColor: lightColor),
            CustomTeaCategories(
                categoriesTitle: "Read Tea", categoriesColor: greenColor),
            CustomTeaCategories(
                categoriesTitle: "Ginger Tea", categoriesColor: lightColor),
            CustomTeaCategories(
                categoriesTitle: "Green Tea", categoriesColor: lightColor),
            CustomTeaCategories(
                categoriesTitle: "Hibiscus Tea", categoriesColor: lightColor),
            CustomTeaCategories(
                categoriesTitle: "Sage Tea", categoriesColor: lightColor),
            CustomTeaCategories(
                categoriesTitle: "Chamomile Tea", categoriesColor: lightColor),
          ],
        ),
      ),
    );
  }
}
