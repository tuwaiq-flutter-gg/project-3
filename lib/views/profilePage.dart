import 'package:flutter/material.dart';
import 'package:perject_3/colorStyle.dart';
import 'package:perject_3/components/ScoreRankCard.dart';
import 'package:perject_3/components/groupRow.dart';
import 'package:perject_3/components/profileCard.dart';
import 'package:perject_3/components/secondCard.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: ListView(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Prfile",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                const ProfileCard(name: "Rakan Alotaibi", state: "happy"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ScoreRankCard(
                      leftIcon: Icons.auto_awesome_outlined,
                      titel: "Score",
                      subtile: "98",
                    ),
                    ScoreRankCard(
                      leftIcon: Icons.military_tech,
                      titel: "Rank",
                      subtile: "4th",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const SecondCard(
                  mainText: "My Events",
                  state: "3 upcoming event",
                  icnoName: Icons.event,
                ),
                const SizedBox(
                  height: 10,
                ),
                const SecondCard(
                  mainText: "My Activities",
                  state: "22 activities done",
                  icnoName: Icons.assignment_turned_in,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.38,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: Colors.black38,
                    ),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "Groups",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const GroupRow(name: "Group 1"),
                      const GroupRow(name: "Group 2"),
                      const GroupRow(name: "Group 3"),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: InkWell(
                            onTap: () {},
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.add,
                                  color: ColorStyles.onPrimary,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "JOIN GROUP",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: ColorStyles.onPrimary),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
