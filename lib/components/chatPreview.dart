import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rescue_app/style.dart';

class chatPreview extends StatelessWidget {
  const chatPreview(
      {super.key,
      this.name,
      this.lastMsg,
      this.time,
      this.numOfUnseenMsg,
      this.imagePath,
      this.onTap});
  final String? name;
  final String? lastMsg;
  final String? time;
  final String? imagePath;
  final int? numOfUnseenMsg;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        tileColor: colors.fields,
        onTap: onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        // tileColor: Color(0xff00000),
        leading: Container(
          width: Get.width * 0.1,
          height: Get.height * 0.16,
          child: CircleAvatar(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagePath.toString(),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        title: Text(
          name.toString(),
          style: GoogleFonts.openSans(
            fontSize: 18,
            color: colors.Text,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          lastMsg.toString(),
          style: GoogleFonts.openSans(
            fontSize: 16,
            color: colors.icons,
            fontWeight: FontWeight.normal,
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              time.toString(),
              style: TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 15,
                color: colors.icons,
              ),
            ),
            SizedBox(height: Get.height * 0.01),
            numOfUnseenMsg! > 0
                ? Container(
                    width: 25.0,
                    height: 25.0,
                    decoration: BoxDecoration(
                      color: colors.feedBack,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        (numOfUnseenMsg! > 9)
                            ? "9+"
                            : numOfUnseenMsg.toString(),
                        style: TextStyle(
                          fontFamily: 'Helvetica',
                          fontSize: 15,
                          color: colors.icons,
                        ),
                      ),
                    ),
                  )
                : Text(''),
          ],
        ),
      ),
    );
  }
}
