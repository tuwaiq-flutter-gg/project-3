import 'package:flutter/material.dart';

class LastTransactions extends StatelessWidget {
  const LastTransactions(
      {super.key,
      required this.title,
      required this.suptitle,
      required this.amont,
      required this.type,
      required this.image});
  final String title;
  final String suptitle;
  final String image;
  final double amont;
  final Color type;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          //height: 318,
          // width: 130,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 80,
                      width: 80,
                      child: Image.asset(
                        image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    //alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(suptitle),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Text(
                "SAR ${amont.toString()}",
                style: TextStyle(color: type),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
