import 'package:flutter/material.dart';
import 'package:project_3/Assest/Colors.dart';
import 'package:project_3/Comp/More%20Items.dart';
import 'package:project_3/Pages/Quick%20login.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          // color: Colors.red,
          child: ListView(children: [
            MoreItem(
              itemName: "My Orders",
              itemIcon: Icon(
                Icons.list_alt_rounded,
                color: blueColor,
              ),
              onPressed: () {},
            ),
            Container(
              height: 1,
              color: GrayColor,
            ),
            MoreItem(
              itemName: "Offers",
              itemIcon: Icon(
                Icons.discount,
                color: blueColor,
              ),
              onPressed: () {},
            ),
            Container(
              height: 1,
              color: GrayColor,
            ),
            MoreItem(
              itemName: "Invite a friend",
              itemIcon: Icon(
                Icons.share,
                color: blueColor,
              ),
              onPressed: () {},
            ),
            Container(
              height: 1,
              color: GrayColor,
            ),
            MoreItem(
              itemName: "Help & Support",
              itemIcon: Icon(
                Icons.support_agent,
                color: blueColor,
              ),
              onPressed: () {},
            ),
            Container(
              height: 1,
              color: GrayColor,
            ),
            MoreItem(
              itemName: "change Language",
              itemIcon: Icon(
                Icons.language,
                color: blueColor,
              ),
              onPressed: () {},
            ),
            Container(
              height: 1,
              color: GrayColor,
            ),
            MoreItem(
              itemName: "Logout",
              itemIcon: Icon(
                Icons.logout,
                color: blueColor,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuickLogin()));
              },
            ),
            Container(
              height: 1,
              color: GrayColor,
            ),
          ]),
        ),
      ),
    );
  }
}
