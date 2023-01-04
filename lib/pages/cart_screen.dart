// ignore_for_file: deprecated_member_use

import 'package:delivery_food_app/constants/values.dart';
import 'package:delivery_food_app/pages/checkout_screen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: Text(
          'Shopping Cart',
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildTitle(),
            Divider(),
            buildItemsList(),
            Divider(),
            buildPriceInfo(),
            SizedBox(height: 8),
            addToCardButton(context),
          ],
        ),
      ),
    );
  }

  Widget buildTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('Your Orders', style: headerStyle),
        RaisedButton.icon(
          icon: Icon(Icons.delete_forever),
          color: Colors.red,
          shape: StadiumBorder(),
          splashColor: Colors.white60,
          onPressed: () {},
          textColor: Colors.white,
          label: Text('Clear'),
        ),
      ],
    );
  }

  Widget buildItemsList() {
    return Expanded(
      child: ListView.builder(
        itemCount: 3,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: const AssetImage('assets/images/3.jpg')),
              title: Text('Pizza', style: subtitleStyle),
              subtitle: Text('\$50'),
              trailing: Text('x 3', style: subtitleStyle),
            ),
          );
        },
      ),
    );
  }

  Widget buildPriceInfo() {
    double total = 0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('Total:', style: headerStyle),
        Text('\$150', style: headerStyle),
      ],
    );
  }

  Widget addToCardButton(context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CheckOutScreen()));
        },
        padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 12),
        color: mainColor,
        shape: const StadiumBorder(),
        child: Text('CheckOut', style: titleStyle),
      ),
    );
  }
}
