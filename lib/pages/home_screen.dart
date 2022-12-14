import 'package:carousel_slider/carousel_slider.dart';
import 'package:delivery_food_app/constants/components.dart';
import 'package:delivery_food_app/constants/values.dart';
import 'package:delivery_food_app/model/food_model.dart';
import 'package:delivery_food_app/pages/cart_screen.dart';
import 'package:delivery_food_app/pages/categories_screen.dart';
import 'package:delivery_food_app/pages/search_screen.dart';
import 'package:delivery_food_app/widgets/food_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'products_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final searchController = TextEditingController();
  final formKey = GlobalKey<FormState>();

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
                onFieldSubmitted: (String value) {
                  if (value != null)
                    navigateTo(
                      context,
                      SearchScreen(valueOfSearch: value.toString()),
                    );
                },
              ),
            ),
          ),
        ),
      ),
      
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: CarouselSlider(
                  items: [
                    Image(
                      image: AssetImage('assets/images/2.jpg'),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Image(
                      image: AssetImage('assets/images/3.jpg'),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Image(
                      image: AssetImage('assets/images/4.jpg'),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ].toList(),
                  options: CarouselOptions(
                    height: 200,
                    viewportFraction: 1.0, // full width page
                    enlargeCenterPage: false,
                    initialPage: 0, // start page from 0
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(seconds: 1),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
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
                        'Top Categories',
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
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios,
                                color: Colors.grey, size: 20),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        categoryBuilder(context, "Eats", "assets/images/1.jpg"),
                        const SizedBox(
                          width: 7.0,
                        ),
                        categoryBuilder(
                            context, "Drinks", "assets/images/drinks.jpg"),
                        const SizedBox(
                          width: 7.0,
                        ),
                        categoryBuilder(
                            context, "Pizza", "assets/images/2.jpg"),
                        const SizedBox(
                          width: 7.0,
                        ),
                        categoryBuilder(
                            context, "Meats", "assets/images/4.jpg"),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
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
                        'Top Products',
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
                        'New Products',
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

  Widget categoryBuilder(context, title, image) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width / 4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            CircleAvatar(radius: 40, backgroundImage: AssetImage('$image')),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textDirection: TextDirection.rtl,
            )
          ],
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
