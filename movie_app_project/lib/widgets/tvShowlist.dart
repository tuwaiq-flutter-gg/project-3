import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:movie_app_project/description.dart';
import 'package:movie_app_project/pages/homepage.dart';
import 'package:movie_app_project/style.dart';

class showlist extends StatelessWidget {
  const showlist({super.key,   required this.popular, required this.topratedtv});
  final List popular;
  final List topratedtv;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: 
            [Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){
                      Get.to(homepage());
                    }, icon: Icon(Icons.arrow_back_ios),color: Colors.white,),
                    Text(
                      "popular tv shows",
                      style: header2,
                    ),
                  ],
                ),
                Container(
                  height: 270,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: popular.length,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: () {
                              Get.to(Discription(
                              Name: popular[index]["original_name"],
                              bannerurl: "http://image.tmdb.org/t/p/w500/" +
                                  popular[index]["backdrop_path"],
                              description: popular[index]["overview"],
                              posterurl: "http://image.tmdb.org/t/p/w500/" +
                                  popular[index]["poster_path"],
                              vote: popular[index]["vote_average"].toString(),
                              launch: popular[index]["release_date"],
                            )
                            );
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
                                                  popular[index]["poster_path"]))),
                                ),
                                Container(
                                  child: Text(
                                    popular[index]["original_name"] != null
                                        ? popular[index]["original_name"]
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
                  "top Rated Tv Shows",
                  style: header2,
                ),
                Container(
                  height: 270,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: topratedtv.length,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: () {
                             Get.to(Discription(
                              Name: topratedtv[index]["original_name"],
                              bannerurl: "http://image.tmdb.org/t/p/w500/" +
                                  topratedtv[index]["backdrop_path"],
                              description: topratedtv[index]["overview"],
                              posterurl: "http://image.tmdb.org/t/p/w500/" +
                                  topratedtv[index]["poster_path"],
                              vote: topratedtv[index]["vote_average"].toString(),
                              launch: topratedtv[index]["release_date"],
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
                                                  topratedtv[index]["poster_path"]))),
                                ),
                                Container(
                                  child: Text(
                                    topratedtv[index]["original_name"] != null
                                        ? topratedtv[index]["original_name"]
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
