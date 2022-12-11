import 'package:flutter/material.dart';

class MoreItem extends StatelessWidget {
  const MoreItem(
      {super.key,
      required this.itemName,
      required this.itemIcon,
      this.onPressed});
  final String itemName;
  final Icon itemIcon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        //color: Colors.red,
        height: 80,
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            itemIcon,
            SizedBox(
              width: 5,
            ),
            Text(itemName)
          ],
        ),
      ),
    );
  }
}
