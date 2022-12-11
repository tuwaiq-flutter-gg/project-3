import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rescue_app/style.dart';

class customTextFieldProfile extends StatelessWidget {
  customTextFieldProfile(
      {super.key,
      this.prefixIcon,
      required this.isPass,
      this.keyboardType,
      this.controller,
      required this.enabled,
      this.hint,
      required String name});

  final String? hint;
  final Icon? prefixIcon;
  bool isPass = false;
  bool enabled = true;
  TextInputType? keyboardType = TextInputType.text;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width / 1.2,
              child: TextFormField(
                  textAlignVertical: TextAlignVertical.top,
                  enabled: enabled,
                  controller: controller,
                  keyboardType: keyboardType,
                  obscureText: isPass,
                  cursorColor: colors.feedBack,
                  initialValue: hint,
                  decoration: InputDecoration(
                    prefixIcon: prefixIcon,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: colors.fields,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
