import 'package:delivery_food_app/constants/components.dart';
import 'package:delivery_food_app/pages/cart_screen.dart';
import 'package:delivery_food_app/pages/categories_screen.dart';
import 'package:delivery_food_app/pages/home_screen.dart';
import 'package:delivery_food_app/pages/products_screen.dart';
import 'package:delivery_food_app/pages/search_screen.dart';
import 'package:flutter/material.dart';

class AppLayout extends StatefulWidget {
  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int currentIndex = 0;

  List<Widget> bottomScreens = [
    HomeScreen(),
    ProductsScreen(),
    CategoriesScreen(),
    SearchScreen(),
  ];

    List titles = [
    'Home',
    'Products',
    'Categories',
    'Search',
  ];

  void changeBottomNav(int index) {
    currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titles[currentIndex],
        ),
        actions: [
          Stack(
            children: <Widget>[
              IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {
                navigateTo(context, CartScreen());
              }),
              Positioned(
                right: 5,
                top: 3,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: const Text(
                    '20',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ],
        elevation: 0,
      ),
      body: bottomScreens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            changeBottomNav(index);
          });
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_basket,
            ),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_on_rounded),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
        ],
      ),
    );
  }
}
