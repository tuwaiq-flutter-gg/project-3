import 'package:flutter/material.dart';
import 'package:project_3/Assest/Colors.dart';
import 'package:project_3/Comp/Cusstom%20Comp/Custom%20button.dart';
import 'package:project_3/Comp/Cusstom%20Comp/Last%20Transactions.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          
            child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    child: Image.asset("images/Card.png"),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width - 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomButton(
                          background: Colors.white,
                          onPressed: () {},
                          title: "Lock Card",
                          buttnIcon: Icon(
                            Icons.lock,
                            color: OrngColor,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: CustomButton(
                          background: Colors.white,
                          onPressed: () {
                            //Get.to(Transfer());
                          },
                          title: "Card Settings",
                          buttnIcon: Icon(
                            Icons.settings,
                            color: OrngColor,
                          )),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "CARD TRANSACTIONS",
                            style: TextStyle(fontSize: 18, color: GrayColor),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "See All",
                                style: TextStyle(color: OrngColor),
                              )),
                        ],
                      ),
                    ),
                    LastTransactions(
                        image: "images/visa.png",
                        suptitle: "Add monry",
                        title: "Card(*****9997)",
                        amont: 300,
                        type: Colors.green),
                    LastTransactions(
                        image: "images/visa.png",
                        suptitle: "Send money",
                        title: "Card(*****9997)",
                        amont: 100,
                        type: Colors.red),
                    LastTransactions(
                        image: "images/CashBack_icon.png",
                        suptitle: "Cashback",
                        title: "Cashback promo",
                        amont: 15,
                        type: Colors.green)
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
