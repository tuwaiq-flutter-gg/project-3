import 'package:asma_store_projct3/Componants/TextFilde.dart';
import 'package:asma_store_projct3/Componants/buttom.dart';
import 'package:asma_store_projct3/Pages/LogIn.dart';
import 'package:asma_store_projct3/Pages/Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SingeUp extends StatelessWidget {
  const SingeUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 100,
          ),
          Align(
            //alignment: Alignment.bottomRight,
            child: Container(
              // alignment: Alignment.,
              width: Get.width - 40,
              height: Get.height / 2,

              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 300),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextFildStyle(
                      labelText: "Enter Username",
                    ),
                    TextFildStyle(
                      labelText: "Enter Password",
                    ),
                    TextFildStyle(
                      labelText: "Re-enter Password",
                    ),
                    mineButtom(
                      onTap: () {
                        Get.to(Profile());
                      },
                      text: 'Sing Up',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: InkWell(
                        onTap: () {
                          Get.to(SingIn());
                        },
                        child: Text(
                          " already have  account?",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          SizedBox(
            height: 90,
          ),
        ],
      ),
    );
  }
}
