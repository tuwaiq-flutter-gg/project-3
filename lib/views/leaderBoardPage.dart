import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:perject_3/colorStyle.dart';
import 'package:perject_3/components/mainComponents/leaderborardCard.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: ListView(
            children: [
              const Text(
                "Members",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0.5,
                        color: Colors.black54,
                      ),
                    ),
                    suffixIcon: Icon(Icons.search_rounded),
                    hintText: "Search"),
              ),
              SizedBox(
                height: 20,
              ),
              LeaderboardCard(
                number: 1,
                point: "156",
                rank: "1",
              ),
              LeaderboardCard(
                number: 2,
                point: "122",
                rank: "2",
              ),
              LeaderboardCard(
                number: 3,
                point: "103",
                rank: "3",
              ),
              LeaderboardCard(
                number: 4,
                point: "98",
                rank: "4",
              ),
              LeaderboardCard(
                number: 5,
                point: "89",
                rank: "5",
              ),
              LeaderboardCard(
                number: 6,
                point: "83",
                rank: "6",
              ),
              LeaderboardCard(
                number: 7,
                point: "80",
                rank: "7",
              ),
              LeaderboardCard(
                number: 8,
                point: "74",
                rank: "8",
              ),
              LeaderboardCard(
                number: 9,
                point: "73",
                rank: "9",
              ),
              LeaderboardCard(
                number: 10,
                point: "71",
                rank: "10",
              ),
              LeaderboardCard(
                number: 11,
                point: "71",
                rank: "11",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
