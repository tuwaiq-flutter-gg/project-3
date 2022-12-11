import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myevent/components.dart/cards.dart';

class Eventpage extends StatelessWidget {
  Eventpage(
      {super.key, this.Destance, this.SecText, this.cardTitle, this.imagepath});
  String? imagepath;
  double? Destance;
  String? SecText;
  String? cardTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 232, 241),
      appBar: AppBar(
        title: Text("${cardTitle}") ,backgroundColor: Color.fromARGB(255, 97, 12, 201),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Container(
                  height: 400,
                  child: MyCard(
                    Destance: Destance,
                    imagepath: imagepath,
                    SecText: SecText,
                    cardTitle: cardTitle,
                  ))
            ],
          )),
          Container(
            child: Text(""),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
                child: Container(
              height: 50,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 97, 12, 201),
                border: Border.all(
                    color: Color.fromARGB(255, 97, 12, 201), width: 3.0),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Text(
                "BOOK",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
