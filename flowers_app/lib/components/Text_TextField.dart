import 'package:flowers_app/components/custText.dart';
import 'package:flowers_app/components/custTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Text_TextField extends StatelessWidget {
  final text;
  final textfield;
  const Text_TextField(
      {super.key, required this.text, required this.textfield});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              customText(text: text),
            ],
          ),
        ),
        custTextField(text: textfield),
      ],
    );
  }
}
