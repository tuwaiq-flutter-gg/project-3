import 'package:delivery_food_app/constants/components.dart';
import 'package:delivery_food_app/constants/values.dart';
import 'package:delivery_food_app/pages/login_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/register.png'),
                  width: double.infinity,
                  height: 250.0,
                ),
                Center(
                  child: Text(
                    'Create New Account',
                    style: TextStyle(
                      fontSize: 30.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w600,
                      color: mainColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Center(
                  child: Text(
                    'Register & enjoy!',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: usernameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Username",
                    focusColor: mainColor,
                    prefixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(
                        color: mainColor,
                      ),
                    ),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Please enter username!';
                    }
                  },
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "example@example.com",
                    labelText: "Email",
                    focusColor: mainColor,
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(
                        color: mainColor,
                      ),
                    ),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Please enter email!';
                    }
                  },
                ),
                const SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: "*******",
                    labelText: "Password",
                    focusColor: mainColor,
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.visibility_off_outlined),
                      onPressed: () {},
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide(
                        color: mainColor,
                      ),
                    ),
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Please enter password!';
                    }
                  },
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Container(
                    width: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: mainColor,
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Have account?',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          navigateTo(context, LoginScreen());
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: mainColor, fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
