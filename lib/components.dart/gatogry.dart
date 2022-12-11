import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class catg extends StatelessWidget {
   catg({super.key,this.imagepath,this.name});
  String? imagepath; 
    String? name; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.white,
            
            height: 50,
            width: 50,
            child: Center(child: Image.asset("${imagepath!}",fit: BoxFit.cover,))),
        Text(name!)],
      ),
    );
  }
}
