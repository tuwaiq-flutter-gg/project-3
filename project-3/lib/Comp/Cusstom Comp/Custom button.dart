import 'package:flutter/material.dart';
import 'package:project_3/Assest/Colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.buttnIcon,
      this.onPressed, required this.background});
  final String title;
  final Icon buttnIcon;
  final Function()? onPressed;
  final Color background;

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: onPressed,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Expanded(
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              padding: EdgeInsets.all(15),
              color:background,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buttnIcon,
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, color: BlacColor),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
