import 'dart:convert';

import 'package:asom_cookies/view/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http ;


class Allergy extends StatefulWidget {
  const Allergy({super.key});

  static String? quote ;

  @override
  State<Allergy> createState() => _AllergyState();
}

class _AllergyState extends State<Allergy> {
  void getAllergyMenu() async {
    var url = Uri.parse('https://api.api-ninjas.com/v1/quotes?category=happiness') ; // here the API url 

    var responseWithHeaders = await http.get(url , headers: {
      'X-Api-Key' : 'uuijyvzaBxTHtbv61WfZtw==TQIxnIMZfZpw89Yg',
    });
    Allergy.quote = jsonDecode(responseWithHeaders.body)[0]['quote'];
    setState(() {
      
    });
    
  }

  @override
  Widget build(BuildContext context) {

    getAllergyMenu();
    return Expanded(child: Align( alignment: Alignment.center, child: customText(text: Allergy.quote ?? '', size: 20)));

  }
}

