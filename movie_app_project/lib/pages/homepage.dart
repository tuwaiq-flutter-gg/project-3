import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:movie_app_project/componant/textfield.dart';
import 'package:movie_app_project/pages/Profile.dart';
import 'package:movie_app_project/pages/Signlogin.dart';
import 'package:movie_app_project/style.dart';
import 'package:movie_app_project/widgets/movieList.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'package:movie_app_project/widgets/tvShowlist.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List trendmovie = [];
  List Topratedmovie = [];
  List PopulartvShow = [];
  List TopRatedtvShow = [];

  final apikey = "73fac2be6333edef29df462d5e975a0b";
  final readaccesstoken =
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3M2ZhYzJiZTYzMzNlZGVmMjlkZjQ2MmQ1ZTk3NWEwYiIsInN1YiI6IjYzOTM3MWU2ZTE5ZGU5MDBkOTBjMGJlZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.RvzECUdqgYtNIUJJZ9a5L2xbcBkhQxmu83d1BD7sUA0";

  @override
  void initState() {
    loadmovie();
    super.initState();
  }

  loadmovie() async {
    TMDB tmdbwithcustomlogs = TMDB(
      ApiKeys(apikey, readaccesstoken),
      logConfig: ConfigLogger(
        showLogs: true,
        showErrorLogs: true,
      ),
    );
    Map trendingResult = await tmdbwithcustomlogs.v3.movies.getPopular();
    Map TopratedmovieResult = await tmdbwithcustomlogs.v3.movies.getTopRated();
    Map PopulartvShowResult = await tmdbwithcustomlogs.v3.tv.getPopular();
    Map topRatedtvShowResult = await tmdbwithcustomlogs.v3.tv.getTopRated();
    print(trendingResult);

    setState(() {
      trendmovie = trendingResult["results"];
      Topratedmovie = TopratedmovieResult['results'];
      PopulartvShow = PopulartvShowResult["results"];
      TopRatedtvShow = topRatedtvShowResult["results"];
      print(trendmovie);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.to(signlogPage());
                      },
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                    ),
                    Column(
                      children: [
                        Text(
                          "Hi there, \nIt's time to have some fun!! ",
                          style: header2,
                        ),
                      ],
                    ),
                    CircleAvatar(
                        backgroundColor: Colors.black26,
                        child: IconButton(
                          icon: Icon(Icons.person),
                          onPressed: () {
                            Get.to(Profile());
                          },
                        ))
                  ],
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width - 100,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(175, 236, 240, 241),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        prefixIcon: Icon(Icons.search),
                        labelText: "Search here.."),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Movies",
                  style: heading,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: InkWell(
                    onTap: () {
                      Get.to(trendingmovies(
                          trending: trendmovie, toprated: Topratedmovie));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("Images/movie.jpeg"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black45, BlendMode.darken))),
                      height: 300,
                      width: MediaQuery.of(context).size.width - 25,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Tv Shows",
                  style: heading,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: InkWell(
                    onTap: () {
                      Get.to(showlist(
                        popular: PopulartvShow,
                        topratedtv: TopRatedtvShow,
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("Images/mov.jpeg"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black45, BlendMode.darken))),
                      height: 300,
                      width: MediaQuery.of(context).size.width - 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
