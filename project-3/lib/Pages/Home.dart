import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_3/Assest/Colors.dart';
import 'package:project_3/Comp/Account%20Balance.dart';
import 'package:project_3/Comp/Cusstom%20Comp/Custom%20button.dart';
import 'package:project_3/Comp/Cusstom%20Comp/Last%20Transactions.dart';
import 'package:project_3/Comp/Services.dart';

class Home extends GetMaterialApp {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: ListView(children: [
            InkWell(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 200,
                  child: Image.asset(
                    "images/CashBack.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: AccountBalance(balance: 100),
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
                          title: "Pay",
                          buttnIcon: Icon(
                            Icons.payments,
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
                          onPressed: () {},
                          title: "Transfer",
                          buttnIcon: Icon(
                            Icons.currency_exchange,
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
                child: Column(
                  children: [
                    Services(
                      serviceIcon: Icon(
                        Icons.sim_card_rounded,
                        color: OrngColor,
                      ),
                      serviceName: "Sawa Recharge",
                      onPressed: () {},
                    ),
                    Services(
                      serviceIcon: Icon(
                        Icons.fastfood,
                        color: OrngColor,
                      ),
                      serviceName: "Food Pickup",
                      onPressed: () {},
                    ),
                    Services(
                      serviceIcon: Icon(
                        Icons.local_activity,
                        color: OrngColor,
                      ),
                      serviceName: "Activities",
                      onPressed: () {},
                    ),
                    Services(
                      serviceIcon: Icon(
                        Icons.call_split,
                        color: OrngColor,
                      ),
                      serviceName: "Qatta",
                      onPressed: () {},
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
          ]),
        ),
      ),
    );
  }
}
