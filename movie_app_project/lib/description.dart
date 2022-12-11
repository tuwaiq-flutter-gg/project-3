import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:movie_app_project/pages/homepage.dart';
import 'package:movie_app_project/style.dart';
import 'package:movie_app_project/widgets/movieList.dart';

class Discription extends StatelessWidget {
  const Discription(
      {super.key,
      required this.Name,
      required this.description,
      required this.bannerurl,
      required this.posterurl,
      required this.vote,
      required this.launch});
  final String Name, description, bannerurl, posterurl, vote, launch;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 250,
              child: Stack(children: [
                Positioned(
                    child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    bannerurl,
                    fit: BoxFit.cover,
                  ),
                )),
                Positioned(
                    child: IconButton(
                        onPressed: () {
                          Get.to(homepage());
                        },
                        icon: Icon(Icons.arrow_back_ios))),
                Positioned(
                    bottom: 10,
                    child: Text(
                      "⭐ Rating : " + vote,
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ))
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                Name != null ? Name : "not found",
                style: header2,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Releasing On " + launch,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                "Description: \n" + description,
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
