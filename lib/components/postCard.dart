import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rescue_app/style.dart';

class postCard extends StatelessWidget {
  const postCard({super.key, this.postType, this.imagePath, this.comments});
  final String? postType;
  final String? imagePath;
  final String? comments;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: Get.height * 0.3,
        width: Get.width * 0.85,
        decoration: BoxDecoration(
            color: colors.fields, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Text(
              postType.toString(),
              style: GoogleFonts.openSans(
                fontSize: 24,
                color: colors.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
                height: Get.height * 0.18,
                width: Get.width * 0.6,
                child: Image.asset(imagePath.toString())),
            Divider(),
            Text(
              comments.toString(),
              style: GoogleFonts.openSans(
                fontSize: 18,
                color: colors.Text,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
