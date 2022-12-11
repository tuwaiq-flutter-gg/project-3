import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:http/http.dart' as http;
import 'package:project_3/Assest/Colors.dart';
import 'package:project_3/Comp/Cusstom%20Comp/Custom%20button.dart';

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  var post = "";
  Future getPost() async {
    var url = Uri.https("api.coindesk.com", '/v1/bpi/currentprice.json');
    var response = await http.get(
      url,
    );
    var responseBody = jsonDecode(response.body);
    print(responseBody["USD"]);
    post = responseBody["time"]["updatedISO"];
  }

  // void initstate() {
  //   getPost();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(children: [
        SizedBox(
          height: 50,
        ),
        CustomButton(
          background: Colors.white,
          buttnIcon: Icon(Icons.add_chart),
          title: "Bitcoin up to date",
          onPressed: () {
            setState(() {});
            getPost();
          },
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "$post",
            style: TextStyle(fontSize: 17, color: blueColor),
          ),
        )
        //Text("${post}")
      ]),
    );
  }
}
