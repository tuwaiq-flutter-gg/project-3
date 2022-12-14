import 'package:delivery_food_app/constants/values.dart';
import 'package:delivery_food_app/model/food_model.dart';
import 'package:delivery_food_app/widgets/food_card.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: builderWidget(context),
    );
  }

  Widget builderWidget(context) => SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Pizza Products',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        child: Row(
                          children: const [
                            Text(
                              'more',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.grey),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 300,
                      child: buildFoodList(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.grey[300],
                height: 1.0,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Meats Products',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        child: Row(
                          children: const [
                            Text(
                              'more',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 300,
                      child: buildFoodList(),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.grey[300],
                height: 1.0,
              ),
              const SizedBox(
                height: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Fast Products',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        child: Row(
                          children: const [
                            Text(
                              'more',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 300,
                      child: buildFoodList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget buildFoodList() {
    List<Food> listOfFoods = [
      Food(
          images: [
            'assets/images/1.jpg',
            'assets/images/2.jpg',
          ],
          id: "1",
          name: "Pizza",
          description: "Piza Description",
          price: 30.0,
          rating: 4,
          shop: Shop(email: "test@gail.com", name: "Shop1", id: "1"),
          createdAt: DateTime(2022, 12, 9),
          updatedAt: DateTime(2022, 12, 10),
          v: 1222),
      Food(
          images: [
            'assets/images/dinner.jpg',
          ],
          id: "2",
          name: "Holiday dinner check",
          description: "Chef mode activated with these fresh & delish finds.",
          price: 50.0,
          rating: 3,
          shop: Shop(email: "info@gmail.com", name: "Shop 3", id: "3"),
          createdAt: DateTime(2022, 12, 20),
          updatedAt: DateTime(2022, 12, 21),
          v: 1222),
      Food(
          images: [
            'assets/images/3.jpg',
            'assets/images/4.jpg',
          ],
          id: "3",
          name: "Pizza 2",
          description: "Piza2 Description",
          price: 50.0,
          rating: 3,
          shop: Shop(email: "info@gmail.com", name: "Shop2", id: "2"),
          createdAt: DateTime(2022, 12, 20),
          updatedAt: DateTime(2022, 12, 21),
          v: 1222),
      Food(
          images: [
            'assets/images/5.jpg',
          ],
          id: "4",
          name: " High Protein - Dog Meal 2",
          description:
              "Chicken - Meat - Potatoes - Peas - Carrots - Oats - Sesame - Omega 3 Oil - Olive Oil",
          price: 100.0,
          rating: 3,
          shop: Shop(email: "info@gmail.com", name: "Shop2", id: "2"),
          createdAt: DateTime(2022, 12, 20),
          updatedAt: DateTime(2022, 12, 21),
          v: 1222),
    ];
    return ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: [
          FoodCard(listOfFoods[0]),
          FoodCard(listOfFoods[1]),
          FoodCard(listOfFoods[2]),
          FoodCard(listOfFoods[3]),
        ]);
  }
}
