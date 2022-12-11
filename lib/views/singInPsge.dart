import 'package:flutter/material.dart';
import 'package:perject_3/components/mainComponents/mainTextField.dart';
import 'package:perject_3/views/NavigationPage.dart';
import '../colorStyle.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
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
                      "Sign in",
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
                    hintText: "Password",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: ColorStyles.onPrimary,
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: ColorStyles.onPrimary,
                        ),
                        child: const Text("FORGOT PASSWORD"),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NavigaitonPage()),
                              (route) => false);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorStyles.onPrimary,
                        ),
                        child: const Text("SIGN IN"),
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
