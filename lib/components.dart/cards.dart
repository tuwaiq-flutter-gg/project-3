import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCard extends StatelessWidget {
  MyCard(
      {super.key, this.cardTitle, this.SecText, this.Destance, this.imagepath, this.he,this.we});
  double? Destance;
  String? cardTitle;
  String? SecText;
  String? imagepath;
  int? he ;
  int? we;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 380,
      child: Card(
        color: Color.fromARGB(78, 205, 176, 252),
        clipBehavior: Clip.antiAlias,
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: InkWell(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Stack(
                  children: [
                    Container(
                        width: 400,
                        height: 220,
                        child: Image.asset(
                          "${imagepath}",
                          fit: BoxFit.cover,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 180.0),
                      child: Container(
                          width: 400,
                          height: 30,
                          color: Color.fromARGB(164, 52, 3, 80),
                          child: Text(
                            "${cardTitle}",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 89, 165, 228)),
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Column(
                  children: [Text("${SecText}")],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset("images/Group.png"),
                    Text(" Away${Destance} KM "),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
