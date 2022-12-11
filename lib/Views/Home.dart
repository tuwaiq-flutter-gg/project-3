import 'dart:math';

import 'package:blog/Components/Books.dart';
import 'package:blog/Components/ButtonCom.dart';
import 'package:blog/Components/SectionTitle.dart';
import 'package:blog/Components/TextField.dart';
import 'package:blog/Models/Color.dart';
import 'package:blog/Views/Read.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String author = '';
  String text = "";
  @override
  Widget build(BuildContext context) {
    //--------------------------------------------------------------------------
    GetQuote() async {
      var url = Uri.parse("https://type.fit/api/quotes");
      var response = await http.get(url);

      setState(() {
        Random random = new Random();
        int randomNum = random.nextInt(15);

        text = jsonDecode(response.body)[randomNum]["text"];
        author = jsonDecode(response.body)[randomNum]["author"];
      });
    }
    //--------------------------------------------------------------------------

    return Scaffold(
      backgroundColor: lightBeige,
      body: SafeArea(
          child: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                color: Colors.amber,
                child: FittedBox(
                  child: Image.asset("images/up.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.all(30),
                child: Text(
                  "Lose Yourself in a Book",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red[900],
                      shadows: [Shadow(color: Colors.black, blurRadius: 10)]),
                ),
              )
            ],
          ),

          ///---------------------------------------------------------------
          SizedBox(
            height: 80,
          ),
          Center(
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width - 50,
              child: TextFieldCom(
                HintText: "Search",
                FieldColor: beige,
                Icon: Icon(Icons.search),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          //----------------------------------------------------------------
          SectionTitle(Name: "For You"),
          SizedBox(
            height: 20,
          ),
          //----------------------------------------------------------------

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Books(
                  bookCover: "images/book7.jpg",
                  bookTitel: "Nobody Knows But You",
                  author: "Anica Mrose Rissi",
                  onTapp: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => const Read())));
                  },
                ),
                Books(
                  bookCover: "images/book11.jpeg",
                  bookTitel: "The Real Dada Mother Goose",
                  author: "Jon Scieszka",
                  onTapp: () {},
                ),
                Books(
                    bookCover: "images/book8.jpg",
                    bookTitel: "Grown",
                    author: "Tiffany D. Jackson",
                    onTapp: () {}),
                Books(
                    bookCover: "images/book9.jpg",
                    bookTitel: "Early Departures",
                    author: "Justin A. Reynolds",
                    onTapp: () {}),
              ],
            ),
          ),

          //--------------------------------------------------------------
          SizedBox(
            height: 30,
          ),
          Center(
            child: Stack(children: [
              Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: FittedBox(
                    child: Image.asset("images/back.jpeg"),
                    fit: BoxFit.fill,
                  )),
              Container(
                margin: EdgeInsets.only(left: 50, top: 30),
                height: 150,
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: brouwn),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(author,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: brouwn)),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.only(left: 290, top: 150),
                  height: 80,
                  width: 80,
                  child: ButtonCom(
                    ButtonName: "Next",
                    Color: brouwn,
                    NameColor: lightBeige,
                    OnPressed: () {
                      GetQuote();
                    },
                  ))
            ]),
          ),

          SizedBox(
            height: 30,
          ),
          ////----------------------------------------------------------------
        ],
      )),
    );
  }
}
