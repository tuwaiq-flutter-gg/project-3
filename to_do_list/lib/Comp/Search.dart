import 'package:flutter/material.dart';

class search extends StatelessWidget {
  const search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 350,
        child: TextField(
            //  controller: nameCO,
            decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(35),
              borderSide: BorderSide.none),
          filled: true,
          // fillColor: ligr,
          labelText: "     Look for a Task",
        )),
      ),
    );
  }
}
