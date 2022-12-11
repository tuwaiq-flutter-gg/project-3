import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MappCard extends StatelessWidget {
  MappCard(
      {super.key, this.cardTitle, this.SecText, this.Destance, this.imagepath, });
  double? Destance;
  String? cardTitle;
  String? SecText;
  String? imagepath;
 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Container(
        height: 100,
        width: 100,
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
                      SizedBox(
                        child: Container(
                            width: 100,
                            height: 100,
                            child: Image.asset(
                              "${imagepath}",
                              fit: BoxFit.cover,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Container(
                              width: 100,
                              height: 100,
                              color: Color.fromARGB(164, 52, 3, 80),
                              child: Text(
                                "${cardTitle}",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 89, 165, 228)),
                              )),
                        ),
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
                  child: Text(" Away${Destance} KM "),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
