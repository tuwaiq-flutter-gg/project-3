import 'package:blog/Models/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ContinueRead extends StatelessWidget {
  const ContinueRead(
      {super.key,
      this.bookCover,
      this.bookTitle,
      this.percent,
      this.percentTitle});
  final bookCover;
  final bookTitle;
  final percent;
  final percentTitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width - 50,
          decoration: BoxDecoration(
              color: beige,
              border: Border.all(width: 1, color: beige),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              //book cover
              Container(
                height: 100,
                width: 100,
                child: FittedBox(
                  child: Image.asset(bookCover),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              //title of book
              Container(
                width: 150,
                height: 60,
                //  color: Colors.amber,
                child: Text(
                  bookTitle,
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w500, color: brouwn),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 70,
                width: 70,
                //  color: Colors.amber,
                child: FittedBox(
                  child: CircularPercentIndicator(
                    radius: 60.0,
                    lineWidth: 9.0,
                    percent: percent,
                    center: Text("$percentTitle%",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            color: brouwn)),
                    progressColor: Colors.green,
                  ),
                  fit: BoxFit.contain,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
