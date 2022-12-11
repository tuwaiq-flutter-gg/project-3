import 'package:flutter/material.dart';
import 'package:to_do_list/Comp/ButtonForm.dart';
import 'package:to_do_list/Comp/TextField.dart';

class SignUpPage extends StatelessWidget {
   SignUpPage({super.key});

  TextEditingController con1 = TextEditingController();
  TextEditingController con2 = TextEditingController();
  TextEditingController con3 = TextEditingController();
  TextEditingController con4 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textfield(Title: "Name", con: con1,),
        textfield(Title: "Email", con: con2,),
        textfield(Title: "Password", con: con3,),
        textfield(Title: "Confirm PAssword", con: con4,),
        button(
          title: "SignUp",
          onPressed: () {},
        ),
      ],
    );
  }
}
