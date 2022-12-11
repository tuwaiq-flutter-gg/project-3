import 'package:flutter/material.dart';
import 'package:perject_3/colorStyle.dart';
import 'package:perject_3/components/mainComponents/mainTextField.dart';
import 'package:perject_3/views/navigationPage.dart';
import 'package:perject_3/views/singInPsge.dart';

class ForgotPassPage extends StatelessWidget {
  const ForgotPassPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorStyles.onPrimary,
        title: Text("Restore Password"),
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ! should be change later. and take better resolution
            Image.asset(
              "assets/images/FTCIcon.png",
              height: screenHeight * 0.3,
            ),
            Text(
              "FTC App",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 26,
                  foreground: Paint()
                    ..shader = const LinearGradient(
                            colors: [Colors.purple, Colors.blue])
                        .createShader(const Rect.fromLTWH(100, 0, 200, 100))),
            ),
            Container(
              margin: const EdgeInsets.all(30),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Restore Password",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const MainTextField(
                    hintText: "University ID",
                    prefixIcon: Icon(
                      Icons.person_outline_sharp,
                      color: ColorStyles.onPrimary,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const MainTextField(
                    hintText: "Phone Number",
                    prefixIcon: Icon(
                      Icons.phone,
                      color: ColorStyles.onPrimary,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInPage(),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: ColorStyles.onPrimary,
                        ),
                        child: const Text("SIGN IN"),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorStyles.onPrimary,
                        ),
                        child: const Text("Restore"),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
