import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:movie_app_project/description.dart';
import 'package:movie_app_project/pages/homepage.dart';
import 'package:movie_app_project/style.dart';

class trendingmovies extends StatelessWidget {
  const trendingmovies(
      {super.key, required this.trending, required this.toprated});
  final List trending;
  final List toprated;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.to(homepage());
                      },
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                    ),
                    Text(
                      "Trending Movie",
                      style: header2,
                    ),
                  ],
                ),
                Container(
                  height: 270,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: trending.length,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: () {
                            Get.to(Discription(
                              Name: trending[index]["title"],
                              bannerurl: "http://image.tmdb.org/t/p/w500/" +
                                  trending[index]["backdrop_path"],
                              description: trending[index]["overview"],
                              posterurl: "http://image.tmdb.org/t/p/w500/" +
                                  trending[index]["poster_path"],
                              vote: trending[index]["vote_average"].toString(),
                              launch: trending[index]["release_date"],
                            ));
                          },
                          child: Container(
                            width: 140,
                            child: Column(
                              children: [
                                Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "http://image.tmdb.org/t/p/w500/" +
                                                  trending[index]
                                                      ["poster_path"]))),
                                ),
                                Container(
                                  child: Text(
                                    trending[index]["title"] != null
                                        ? trending[index]["title"]
                                        : "loading",
                                    style: description,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      })),
                ),
                Text(
                  "top rated Movie",
                  style: header2,
                ),
                Container(
                  height: 270,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: toprated.length,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: () {
                            Get.to(Discription(
                              Name: toprated[index]["title"],
                              bannerurl: "http://image.tmdb.org/t/p/w500/" +
                                  toprated[index]["backdrop_path"],
                              description: toprated[index]["overview"],
                              posterurl: "http://image.tmdb.org/t/p/w500/" +
                                  toprated[index]["poster_path"],
                              vote: toprated[index]["vote_average"].toString(),
                              launch: toprated[index]["release_date"],
                            ));
                          },
                          child: Container(
                            width: 140,
                            child: Column(
                              children: [
                                Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "http://image.tmdb.org/t/p/w500/" +
                                                  toprated[index]
                                                      ["poster_path"]))),
                                ),
                                Container(
                                  child: Text(
                                    toprated[index]["title"] != null
                                        ? toprated[index]["title"]
                                        : "loading",
                                    style: description,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      })),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
