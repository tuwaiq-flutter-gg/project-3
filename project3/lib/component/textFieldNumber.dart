import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFN extends StatelessWidget {
  const TextFN({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left: 65),
            child: Row(
              children: [
                SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    Text("+  966"),
                    Container(
                      width: 50,
                      height: 1,
                      color: Color(0xff00A884),
                    ),
                  ],
                ),
                Expanded(
                    child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 80, bottom: 32),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff00A884),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xff00A884),
                        ),
                      ),
                    ),
                  ),
                )),
              ],
            ),
          );
  }
}