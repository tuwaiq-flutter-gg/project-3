import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:rescue_app/style.dart';

class toggleSwitch extends StatelessWidget {
  const toggleSwitch({super.key, required this.Question});
  final String Question;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Question.toString(),
          style: GoogleFonts.openSans(
            fontSize: 22,
            color: colors.Text,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: Get.height * 0.01,
        ),
        ToggleSwitch(
          borderWidth: 10,
          minWidth: 150,
          initialLabelIndex: 1,
          cornerRadius: 20.0,
          activeFgColor: colors.Text,
          inactiveBgColor: colors.fields,
          inactiveFgColor: colors.Text,
          totalSwitches: 2,
          labels: ['Yes', 'No'],
          activeBgColors: [
            [colors.feedBack],
            [colors.feedBack]
          ],
          onToggle: (index) {
            print('switched to: $index');
          },
        ),
      ],
    );
  }
}
