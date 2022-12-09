import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:yaqoot/components/Heder_text.dart';
import 'package:yaqoot/components/containar_Best_offer.dart';
import 'package:yaqoot/components/container_Do_this.dart';
import 'package:yaqoot/components/firest%20-container_Home_p.dart';
import 'package:yaqoot/view/Help.dart';
import 'package:yaqoot/view/Settings.dart';
import 'package:yaqoot/view/Store.dart';
import 'package:yaqoot/view/Usage.dart';

class Home_Page extends StatefulWidget {
  Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int selectedindex = 0;
  List pages = [HomeScreen(), Usage(), Store(), Help(), Settings()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color.fromARGB(255, 15, 12, 12),
          currentIndex: selectedindex,
          selectedIconTheme:
              IconThemeData(color: Color.fromARGB(255, 117, 30, 8)),
          unselectedItemColor: Color.fromARGB(255, 121, 119, 119),
          onTap: (index) {
            setState(() {
              selectedindex = index;
            });
            pages[selectedindex];
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 35),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.data_usage_outlined, size: 35),
              label: 'Usage',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                size: 35,
              ),
              label: 'Store',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.live_help_outlined, size: 35),
              label: 'Help',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, size: 35),
              label: 'Settings',
            ),
            //New
          ],
        ),
        body: pages.elementAt(selectedindex));
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 220, 220),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
                onPressed: (() {}),
                label: Text(
                  "0594443333",
                  style: TextStyle(color: Colors.black),
                ),
                icon: (Icon(
                  Icons.keyboard_arrow_down_sharp,
                  size: 30,
                  color: Colors.black,
                ))),
            IconButton(onPressed: () {}, icon: Image.asset("Image/bell.png"))
          ],
        ),
      ),
      body: ListView(
        children:[Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: InkWell(
                onTap: () {
                  
                },
                child: Container(
                    height: 100,
                    width: Get.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFFFFFF),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Frist_c(
                              name: "Internet 40GB", Img: "Image/mobile-data.png"),
                          VerticalDivider(),
                          Frist_c(
                              name: "Unlimited calls", Img: "Image/phone-call.png"),
                          VerticalDivider(),
                          Frist_c(name: "3 unlimited apps", Img: "Image/add.png"),
                        ],
                      ),
                    )),
              ),
            ),
            //end
      
            //gift contaner
           Heder_Text(name: "Do this firest"),
            Padding(
              padding: const EdgeInsets.only(left: 9, right: 50, top: 5),
              child: Container(
                  height: 150,
                  width: Get.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFFFFFF),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 117, 30, 8),
                          radius: 50,
                          child: ImageIcon(
                            AssetImage("Image/gift.png"),
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40, left: 10),
                            child: Wrap(
                              direction: Axis
                                  .vertical, //Vertical or Horizontal any one ooo
                              children: [
                                Text(
                                  'Gift your friends',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 117, 30, 8)),
                                ),
                                Text(
                                  'Send free unlimited apps to your friends from',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  ' here',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  ' 22 days',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
            //end
             Heder_Text(name: "Best offer"),
            Container(
          height: 230,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            Row(
              children: [
                Best_Oferr(img1:"Image/14_plus.jpeg" ,pris: "4199",name_of_ofeer:"iPhone 14 plus" ,),
                Best_Oferr(img1:"Image/14_plus.jpeg" ,pris: "3849",name_of_ofeer:"iPhone 14" ,),
                Best_Oferr(img1:"Image/14_plus.jpeg" ,pris: "3500",name_of_ofeer:"iPhone 13 Pro" ,),
                Best_Oferr(img1:"Image/14_plus.jpeg" ,pris: "4000",name_of_ofeer:"iPhone 14" ,),
              ],
            )])),
             Container(
          height: Get.height/2,
          child: Column(
            children: [
               Do_This(height_of_cont: 120,siez_of_ImageIcon: 30,name: "khaled",Time: "1 hours",Size_CircleAvatar: 30,img:"Image/promotion.png" ,),
               Do_This(height_of_cont: 120,siez_of_ImageIcon: 30,name: "Ali",Time: "3 hours",Size_CircleAvatar: 30,img:"Image/promotion.png" ,),
               Do_This(height_of_cont: 120,siez_of_ImageIcon: 30,name: "seed",Time: "1 day",Size_CircleAvatar: 30,img:"Image/promotion.png" ,)
            ],
          )),
           
          ],
        ),] 
      ),
    );
  }
}
