import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e55),
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text("Settings"),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 12),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    "images/profile4.jpg",
                    width: 60,
                    height: 60,
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rashed",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Hey There, I using WhatsApp",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.qr_code,
                    size: 28,
                    color: Color(0xff075e55),
                  ),
                )
              ],
            ),
          ),
          Divider(),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: Icon(Icons.key),
            title: Text(
              "Account",
              style: TextStyle(fontSize: 17),
            ),
            subtitle: Text("Privacy, security, change number"),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text(
              "Chat",
              style: TextStyle(fontSize: 17),
            ),
            subtitle: Text("Backups, history, wallpapers"),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text(
              "Notifications",
              style: TextStyle(fontSize: 17),
            ),
            subtitle: Text("Messages, groups & call ringtones"),
          ),
          ListTile(
            leading: Icon(Icons.circle_outlined),
            title: Text(
              "Data and storage usage",
              style: TextStyle(fontSize: 17),
            ),
            subtitle: Text("Network use, automatic download"),
          ),
          ListTile(
            leading: Icon(Icons.help_outline_outlined),
            title: Text(
              "Data and storage usage",
              style: TextStyle(fontSize: 17),
            ),
            subtitle: Text("Network use, automatic download"),
          ),
          ListTile(
            leading: Icon(Icons.people_alt),
            title: Text(
              "Invite a friend",
              style: TextStyle(fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 148, top: 100),
            child: Row(
              children: [
                Container(
                    width: 30,
                    height: 30,
                    child: Image.asset("images/meta-icon.png")),
                SizedBox(
                  width: 5,
                ),
                Text("Meta")
              ],
            ),
          )
        ]),
      ),
    );
  }
}
