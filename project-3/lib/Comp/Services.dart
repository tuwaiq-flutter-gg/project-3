import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services(
      {super.key,
      required this.serviceIcon,
      required this.serviceName,
      this.onPressed});
  final Icon serviceIcon;
  final String serviceName;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 60,
        color: Colors.white,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(children: [
            serviceIcon,
            SizedBox(
              width: 5,
            ),
            Text(
              serviceName,
              style: TextStyle(fontSize: 14),
            )
          ]),
          Icon(Icons.navigate_next)
        ]),
      ),
    );
  }
}
