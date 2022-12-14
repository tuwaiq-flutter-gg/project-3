// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:delivery_food_app/constants/values.dart';
import 'package:intl/intl.dart';

class CheckOutScreen extends StatefulWidget {
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen>
    with SingleTickerProviderStateMixin {
  var now = DateTime.now();
  get weekDay => DateFormat('EEEE').format(now);
  get day => DateFormat('dd').format(now);
  get month => DateFormat('MMMM').format(now);
  double oldTotal = 0;
  double total = 0;

  ScrollController scrollController = ScrollController();
  AnimationController? animationController;

  onCheckOutClick() {
    print("Checkout");
  }

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200))
          ..forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text('CheckOut'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ...buildHeader(),
              //cart items list
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                controller: scrollController,
                itemBuilder: (BuildContext context, int index) {
                  return buildCartItemList();
                },
              ),
              const SizedBox(height: 16),
              const Divider(),
              buildPriceInfo(),
              checkoutButton(),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildHeader() {
    return [
      Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: Text('Cart', style: headerStyle),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 0),
        child: Text('$weekDay, ${day}th of $month ', style: headerStyle),
      ),
      TextButton(
        child: Text('+ Add to order'),
        onPressed: () => Navigator.of(context).pop(),
      ),
    ];
  }

  Widget buildPriceInfo() {
    oldTotal = total;
    total = 450;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('Total:', style: headerStyle),
        AnimatedBuilder(
          animation: animationController!,
          builder: (context, child) {
            return Text(
                '\$ ${lerpDouble(oldTotal, total, animationController!.value)!.toStringAsFixed(2)}',
                style: headerStyle);
          },
        ),
      ],
    );
  }

  Widget checkoutButton() {
    return Container(
      margin: const EdgeInsets.only(top: 24, bottom: 64),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          onCheckOutClick();
        },
        child: Text('Checkout', style: titleStyle),
      ),
    );
  }

  Widget buildCartItemList() {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Container(
        height: 100,
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(6)),
              child: Image.asset(
                'assets/images/3.jpg',
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
            ),
            Flexible(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    height: 45,
                    child: Text(
                      "Pizza",
                      style: titleStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        customBorder: roundedRectangle4,
                        onTap: () {},
                        child: const Icon(Icons.remove_circle),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 2),
                        child: Text('3', style: titleStyle),
                      ),
                      InkWell(
                        customBorder: roundedRectangle4,
                        onTap: () {},
                        child: const Icon(Icons.add_circle),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    height: 45,
                    width: 70,
                    child: Text(
                      '\$50',
                      style: titleStyle,
                      textAlign: TextAlign.end,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    customBorder: roundedRectangle12,
                    child: Icon(Icons.delete_sweep, color: Colors.red),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
