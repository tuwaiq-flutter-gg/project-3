import 'package:blog/Components/SectionTitle.dart';
import 'package:blog/Models/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../Components/BookShelf.dart';
import '../Components/ContinueRead.dart';

class Saved extends StatelessWidget {
  const Saved({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBeige,
      body: SafeArea(
          child: ListView(
        children: [
          SizedBox(
            height: 80,
          ),
          SectionTitle(Name: "Continue Read"),
          SizedBox(
            height: 10,
          ),
          //////////////////////////////////////////////////////////////////////
          Center(
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width - 50,
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      ContinueRead(
                        bookCover: "images/book1.jpg",
                        bookTitle: "The Many Reflections of Miss Jane Deming",
                        percent: 0.4,
                        percentTitle: 40,
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      ContinueRead(
                        bookCover: "images/book2.jpg",
                        bookTitle:
                            "The Tragically True Adventures of Kit Donovan ",
                        percent: 0.7,
                        percentTitle: 70,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  )),
            ),
          ),
          //////////////////////////////////////////////////////////////////////
          SizedBox(
            height: 30,
          ),
          SectionTitle(Name: "Book Shelf"),
          SizedBox(
            height: 10,
          ),
          //////////////////////////////////////////////////////////////////////
          Align(
            alignment: Alignment.center,
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                BookShelf(
                  bookCover: "images/book3.jpg",
                  bookTitle: "Jasper and the Riddle of Riley ",
                ),
                BookShelf(
                  bookCover: "images/book4.jpg",
                  bookTitle: "Midnight Without a Moon",
                ),
                BookShelf(
                  bookCover: "images/book5.jpg",
                  bookTitle: "Calico Girl",
                ),
              ],
            ),
          )
          // Row(
          //   children: [
          //     Center(
          //       child: Container(
          //         height: 230,
          //         width: 170,
          //         decoration: BoxDecoration(
          //             color: lightBeige,
          //             border: Border.all(width: 3, color: beige),
          //             borderRadius: BorderRadius.circular(20)),
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.start,
          //           children: [
          //             Container(
          //               height: 170,
          //               width: 114,
          //               padding: EdgeInsets.only(
          //                 top: 10,
          //               ),
          //               child: FittedBox(
          //                 child: Image.asset("images/book3.jpg"),
          //                 fit: BoxFit.cover,
          //               ),
          //             ),
          //             //
          //             Row(
          //               children: [
          //                 Container(
          //                   margin: EdgeInsets.only(top: 10, left: 10),
          //                   height: 30,
          //                   width: 110,
          //                   child: Expanded(
          //                     child: Text(
          //                       "Jasper and the Riddle of Riley ",
          //                       style: TextStyle(
          //                           fontSize: 14,
          //                           fontWeight: FontWeight.w500,
          //                           color: brouwn),
          //                     ),
          //                   ),
          //                 ),
          //                 Container(
          //                   margin: EdgeInsets.only(top: 10, right: 2),
          //                   height: 20,
          //                   width: 20,
          //                   child: Icon(
          //                     Icons.bookmark,
          //                     color: beige,
          //                   ),
          //                 )
          //               ],
          //             )
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          // )
        ],
      )),
    );
  }
}
