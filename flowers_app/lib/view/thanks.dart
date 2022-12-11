import 'package:flowers_app/components/custText.dart';
import 'package:flowers_app/components/custTitle.dart';
import 'package:flowers_app/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'dart:async';

import 'package:flowers_app/view/chooseSign.dart';
import 'package:flutter/material.dart';

class thanks extends StatefulWidget {
  thanks({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<thanks> {
  bool _isVisible = false;

  _SplashScreenState() {
    new Timer(const Duration(milliseconds: 7000), () {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => home()), (route) => false);
      });
    });

    new Timer(Duration(milliseconds: 10), () {
      setState(() {
        _isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color.fromARGB(255, 82, 50, 62)),
        child: AnimatedOpacity(
          opacity: _isVisible ? 1.0 : 0,
          duration: Duration(milliseconds: 1200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  "Thank you for trust us !",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 140.0,
                  width: 140.0,
                  child: Center(
                    child: ImageIcon(
                      NetworkImage('images/delivery-man.png'),
                      color: Color.fromARGB(255, 69, 69, 69),
                      size: 120,
                    ),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 241, 241, 241),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 137, 132, 132)
                              .withOpacity(0.3),
                          blurRadius: 2.0,
                          offset: Offset(5.0, 3.0),
                          spreadRadius: 2.0,
                        )
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  "Your order is coming ...",
                  style: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 230, 230, 230),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// class thanks extends StatelessWidget {
//   const thanks({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 232, 219, 224),
//       body: Center(
//           child: Container(
//               child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           title(titleText: "Thank You for trust us !"),
//           Image.network(
//             "images/delivery-man.png",
//             height: Get.height / 7,
//             width: Get.width / 7,
//           ),
//           customText(text: "Your Order is coming ...")
//         ],
//       ))),
//     );
//   }
// }
