// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;
  final textColor;
  final String ccProvider;

  const MyCard({
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.color,
    required this.textColor,
    required this.ccProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Balance",
                  style: TextStyle(color: textColor, fontSize: 24),
                ),
                SizedBox(
                  height: 10,
                  // width: 100,
                ),
                Image.asset(
                  ccProvider,
                  height: 70,
                  // width: 50,
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              "\$" + balance.toString(),
              style: TextStyle(
                color: textColor,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Card Number
                Text(
                  "**** **** " + cardNumber.toString(),
                  style: TextStyle(color: textColor),
                ),
                //Card Expiry Date
                Text(
                  expiryMonth.toString() + "/" + expiryYear.toString(),
                  style: TextStyle(color: textColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
