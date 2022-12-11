import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Out_Saudi extends StatelessWidget {
  const Out_Saudi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  height: 100,
                  width: 300,
                  child: Wrap(
                direction: Axis.vertical, //Vertical or Horizontal any one ooo
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                    "You can purchase add-ons to use with",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                       "your plan, check out",
                        style: TextStyle(fontSize: 20),
                      ),
                      TextButton(onPressed: (() {
                        
                      }), child: Text("the store here" ,style: TextStyle(fontSize: 20),))
                    ],
                  ),
                  
                ],
              )
              ),
            )))
          ],
        ),
        );
  }
}
