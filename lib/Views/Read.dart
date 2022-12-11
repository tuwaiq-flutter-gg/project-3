import 'package:blog/Components/ButtonCom.dart';
import 'package:blog/Models/Color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rate/rate.dart';

class Read extends StatelessWidget {
  const Read({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: FittedBox(
                  child: Image.asset("images/book7.jpg"),
                  fit: BoxFit.fitWidth,
                ),
              ),
              //----------------------------------------------------------------
              Padding(
                padding: EdgeInsets.only(
                  top: 48,
                  left: 32,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: currant,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //----------------------------------------------------------------

              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.only(top: 40, right: 10, left: 10),
                  margin: EdgeInsets.only(top: 390),
                  height: (MediaQuery.of(context).size.height / 2) - 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //part1 - delet contaitar
                      //------------------------------------------------------
                      Row(
                        //
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              height: 90,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Nobody Knows But You",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[850]),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "By Anica Mrose Rissi",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    children: [
                                      Rate(
                                        iconSize: 20,
                                        color: Colors.amber,
                                        allowHalf: true,
                                        allowClear: true,
                                        initialValue: 3.5,
                                        readOnly: false,
                                        onChange: (value) => print(value),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "3.37",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.amber),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        "(1.054 Ratings)",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),

                          //-----------------------------------------------------------------
                          //part2
                          Expanded(
                              flex: 1,
                              child: Container(
                                height: 50,
                                margin: EdgeInsets.only(bottom: 40),
                                child: Center(
                                  child: Icon(
                                    Icons.bookmark_add_outlined,
                                    size: 30,
                                    color: currant,
                                  ),
                                ),
                              ))
                          //------------------------------------------------------------------
                        ],
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("About the book",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[850])),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Maybe a killer only looks like a killer in the moment just before, during, or after.Maybe a liar, a good one, never shows it.Kayla is still holding on to Lainie’s secrets.After all.The murder at the end of the summer doesn’t change all that.Besides—Kayla knows that the truth is not the whole story.",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      //------------------------------------------------------
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 50,
                          child: ButtonCom(
                            ButtonName: "Read Now",
                            OnPressed: () {},
                            Color: currant,
                            NameColor: lightBeige,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
