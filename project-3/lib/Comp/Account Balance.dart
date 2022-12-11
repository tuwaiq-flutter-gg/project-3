import 'package:flutter/material.dart';
import 'package:project_3/Assest/Colors.dart';

class AccountBalance extends StatelessWidget {
  AccountBalance({super.key, required this.balance});
  final double balance;
  late double? newBalence = 0;

  // balnceCheng() {
  //   newBalence = (newBalence! + balance)!;

  //   return newBalence.toString();
  // }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "ACCOUNT BALANCE",
                    style: TextStyle(fontSize: 14, color: GrayColor),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  //alignment: Alignment.bottomLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: Text(
                          balance.toString(),
                          style: TextStyle(
                              fontSize: 40,
                              color: BlacColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: Text("SAR",
                            style: TextStyle(
                              fontSize: 30,
                              color: BlacColor,
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.topRight,
                  child: TextButton.icon(
                    style: TextButton.styleFrom(foregroundColor: OrngColor),
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_circle,
                      color: OrngColor,
                    ),
                    label: Text("Add Money"),
                  ),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
