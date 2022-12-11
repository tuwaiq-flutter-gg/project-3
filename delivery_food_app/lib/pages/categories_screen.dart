import 'package:delivery_food_app/constants/values.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Text(
                'Categories',
                style: TextStyle(fontSize: 25, color: Colors.black54),
              ),
              const SizedBox(
                height: 15.0,
              ),
              categoryBuilder("Top Products", "assets/images/2.jpg"),
              const SizedBox(height: 10.0,),
              categoryBuilder("Meats", "assets/images/3.jpg"),
              const SizedBox(height: 10.0,),
              categoryBuilder("Drinks", "assets/images/4.jpg"),
              const SizedBox(height: 10.0,),
              categoryBuilder("Pizza", "assets/images/5.jpg"),
              const SizedBox(height: 10.0,),
              categoryBuilder("Cripe", "assets/images/6.jpg"),
              const SizedBox(height: 10.0,),
              categoryBuilder("Checkins", "assets/images/3.jpg"),
              const SizedBox(height: 10.0,),
              categoryBuilder("Birds", "assets/images/1.jpg"),
              const SizedBox(height: 10.0,),
              categoryBuilder("Soup", "assets/images/3.jpg"),
              const SizedBox(height: 10.0,),
              
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryBuilder(title, image) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('$image'),
                radius: 26,
              ),
              const SizedBox(
                width: 20.0,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
