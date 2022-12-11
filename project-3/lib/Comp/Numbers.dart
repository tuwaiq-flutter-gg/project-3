import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  const NumberButton({super.key, required this.keyNumber,required this.keyContrl});
  final String keyNumber;
  final TextEditingController keyContrl;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        // padding: EdgeInsets.only(top: 8),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {
              keyContrl.text += keyNumber.toString();
            },
            child: Container(
                color: Colors.white,
                height: 224 / 4,
                width: 268 / 3,
                child: Center(
                  child: Text(
                    keyNumber,
                    style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFF283B51),
                        fontWeight: FontWeight.bold),
                  ),
                ))));
  }
}
