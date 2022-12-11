import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rescue_app/style.dart';

class categoryButton extends StatelessWidget {
  categoryButton(
      {super.key,
      required this.title,
      this.onPressed,
      this.buttonColor,
      this.fontColor});
  final String title;
  final Function()? onPressed;
  Color? buttonColor = colors.fields;
  Color? fontColor = colors.primary;

  changeButtonColor({required Color color}) {
    this.buttonColor = color;
  }

  changeFontColor({required Color color}) {
    this.fontColor = color;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.22,
      height: 40.0,
      color: Colors.transparent,
      child: ElevatedButton(
        style: ButtonStyle(

            // enableFeedback: true,
            backgroundColor: MaterialStateProperty.all(buttonColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    side: BorderSide(color: colors.primary, width: 3)))),
        onPressed: () {
          buttonColor = colors.primary;
          fontColor = colors.fields;
        },
        child: Text(
          title.toString(),
          style: GoogleFonts.openSans(
            fontSize: 20,
            color: fontColor,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
