import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class Quotes extends GetxController {
  String? qutes = "Here a Messages For You";
 

  GetQuotes() async {
    final url =
        Uri.parse("https://api.api-ninjas.com/v1/quotes?category=happiness");

    //creat requst
    final requst = http.get(url,
        headers: {'X-Api-Key': 'KqcZrZSSYy4ZQByYiGqeEg==XspoK0IHbDL4fb2e'});

    //send requst
    final respos = await requst;

    //jeson
    final result = jsonDecode(respos.body); // Trnsfair from jeson to string

    qutes = result[0]['quote'];

    print(result);
    update();
  }
}
