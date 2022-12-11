import 'package:blog/Models/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Books extends StatelessWidget {
  const Books(
      {super.key,
      required this.bookCover,
      required this.bookTitel,
      required this.author,
      this.onTapp});
  final bookCover;
  final bookTitel;
  final author;
  final onTapp;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            height: 250,
            width: 160,
            color: Colors.amber,
            child: FittedBox(
              child: Image.asset(bookCover),
              fit: BoxFit.fill,
            ),
          ),
          onTap: onTapp,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 40,
          width: 130,
          child: Text(
            bookTitel,
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.bold, color: brouwn),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 20,
          width: 130,
          child: Text(
            author,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.blueGrey[300]),
          ),
        ),
      ],
    );
  }
}
