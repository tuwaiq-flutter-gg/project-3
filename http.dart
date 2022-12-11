

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Http extends StatefulWidget {
  const Http({super.key});

  @override
  State<Http> createState() => _HttpState();
}

class _HttpState extends State<Http> {
  List posts =[];
   Future getPost()async{
     var url = Uri.parse("https://jsonplaceholder.typicode.com/posts") ;
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body);
    setState(() {
       posts.addAll(responsebody);

    });
    
  
  }
  @override
  void initState() {
    getPost();
    super.initState();
  }



  Widget build(BuildContext context) {
    return Scaffold(

      body:
      posts == null ||posts.isEmpty?
      Center(child: CircularProgressIndicator()):

      
       ListView.builder(
        itemCount: posts.length,
        itemBuilder: ((context, i) {
          return Text("${posts[i]['title']}");
          

      })
    ));
  }
}