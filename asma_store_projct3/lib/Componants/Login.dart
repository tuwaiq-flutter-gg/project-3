import 'package:asma_store_projct3/Componants/TextFilde.dart';
import 'package:asma_store_projct3/Componants/buttom.dart';
import 'package:asma_store_projct3/Pages/SingIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SingInp extends StatelessWidget {
  const SingInp({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      //alignment: Alignment.bottomCenter,
      child: Container(
        // alignment: Alignment.,
        width: Get.width - 40,
        height: Get.height / 3,

        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Padding(
            padding: const EdgeInsets.only(right: 300),
            child: Text(
              "Sign In",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          TextFildStyle(
            labelText: "Username",
          ),
          TextFildStyle(
            labelText: "Password",
          ),
          Padding(
            padding: const EdgeInsets.only(left: 250),
            child: Text(
              "Forgot Password?",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          mineButtom(
            onTap: () {
              Get.to(SingeUp());
            },
            text: 'Sing Up',
          ),
        ]),
      ),
    );
  }
}
