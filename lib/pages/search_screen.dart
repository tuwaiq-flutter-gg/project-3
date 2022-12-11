import 'package:delivery_food_app/constants/components.dart';
import 'package:delivery_food_app/constants/values.dart';
import 'package:delivery_food_app/model/food_model.dart';
import 'package:delivery_food_app/widgets/food_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  var valueOfSearch;
  final searchController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  SearchScreen({this.valueOfSearch});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          height: 45,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
          child: Center(
            child: Form(
              key: formKey,
              child: TextFormField(
                controller: searchController,
                textAlignVertical: TextAlignVertical.center,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Empty";
                  }
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 0.2),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.clear,
                    ),
                    onPressed: () {},
                  ),
                  hintText: 'Search Here ...',
                  border: InputBorder.none,
                ),
                onFieldSubmitted: (String value) {},
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Search Results:',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: buildFoodList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

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
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          FoodCard(listOfFoods[0]),
          FoodCard(listOfFoods[1]),
          FoodCard(listOfFoods[2]),
          FoodCard(listOfFoods[3]),
        ]);
  }
}
