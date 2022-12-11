import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  var response;
  
  String s="dd";
  // var url = Uri.https('https://catfact.ninja/fact#');
  void getFact()async{
    
    var url=Uri.parse("https://catfact.ninja/fact");
     response=await http.get(url);
     print("object");
     s=jsonDecode(response.body)['fact'];

  print(response.body);
  }

  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(),


      body:Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("${s}"),

          ElevatedButton(onPressed: ()  {

            getFact();
            setState(() {
              
            });
        
          }, child: Text("http"))



        ],
      ),
    );
  }
}