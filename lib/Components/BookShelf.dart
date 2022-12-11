import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Models/Color.dart';

class BookShelf extends StatelessWidget {
  const BookShelf(
      {super.key, required this.bookCover, required this.bookTitle});
  final bookCover;
  final bookTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        height: 230,
        width: 170,
        decoration: BoxDecoration(
            color: lightBeige,
            border: Border.all(width: 3, color: beige),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 170,
              width: 114,
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: FittedBox(
                child: Image.asset(bookCover),
                fit: BoxFit.cover,
              ),
            ),
            //
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  height: 30,
                  width: 110,
                  child: Expanded(
                    child: Text(
                      bookTitle,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: brouwn),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 2),
                  height: 20,
                  width: 20,
                  child: Icon(
                    Icons.bookmark,
                    color: beige,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
