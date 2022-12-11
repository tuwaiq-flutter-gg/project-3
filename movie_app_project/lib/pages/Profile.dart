import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:movie_app_project/pages/Password.dart';
import 'package:movie_app_project/pages/Signlogin.dart';
import 'package:movie_app_project/pages/homepage.dart';
import 'package:movie_app_project/style.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  
                  decoration: BoxDecoration(
                  color:Color.fromARGB(255, 100, 2, 148),
                    shape: BoxShape.circle
                  ),
                  
                    child: Icon(Icons.person , size: 50,),
                  height: 100,
                  width: 100,
                )]),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Ruba",
                  style: buttonText
                ),
                Text("0554682715",style: buttonText),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text('My profile',style: buttonText),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                    onPressed: () {
                      Get.to(homepage());
                    },
                  ),
                ),
                ListTile(
                  
                  title: Text('Change Password',style: buttonText),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Password()));
                    },
                  ),
                ),
                ListTile(
                  title: Text('setting',style: buttonText),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                    onPressed: () {},
                  ),
                ),
                ListTile(
                  title: Text('Notification',style: buttonText),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                    onPressed: () {},
                  ),
                ),
                ListTile(
                  title: Text('About Us', style: buttonText,),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                    onPressed: () {},
                  ),
                ),
                Container(
                  height: 46,
                  width: 380,
                  decoration: BoxDecoration(
                      color:Color.fromARGB(255, 100, 2, 148),
                      borderRadius: BorderRadius.circular(30)),
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => signlogPage()));
                      },
                      child: Text("Sign Out", style: buttonText)),
                ),
              ],
            ),
          
        ),
      )
    ;
  }
}
