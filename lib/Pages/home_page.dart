// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/utils/my_button.dart';
import 'package:walletappui/utils/my_card.dart';
import 'package:walletappui/utils/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Page Controller

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: Icon(
          Icons.monetization_on_rounded,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                size: 32,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                size: 32,
              )),
        ]),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //App Bar
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        "My ",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Cards",
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  //Plus Button
                  Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.add))
                ],
              ),
            ),

            SizedBox(
              height: 1,
            ),

            //Saved Cards
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    balance: 69420.00,
                    cardNumber: 2334,
                    expiryMonth: 09,
                    expiryYear: 25,
                    color: Colors.black,
                    textColor: Colors.white,
                    ccProvider: 'lib/images/apple_card__Getty.png',
                  ),
                  MyCard(
                    balance: 42000.00,
                    cardNumber: 1965,
                    expiryMonth: 03,
                    expiryYear: 28,
                    color: Colors.deepPurple[400],
                    textColor: Colors.white,
                    ccProvider: 'lib/images/apple_card__Getty.png',
                  ),
                  MyCard(
                    balance: 42069.00,
                    cardNumber: 4853,
                    expiryMonth: 11,
                    expiryYear: 27,
                    color: Colors.blue[400],
                    textColor: Colors.white,
                    ccProvider: 'lib/images/apple_card__Getty.png',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade700,
              ),
            ),

            SizedBox(
              height: 25,
            ),
            //3 Buttons -> Send + Pay + Bills
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Send Button
                  MyButton(
                      iconImagePath: 'lib/images/transactions.png',
                      buttonText: 'SEND'),
                  // Pay Button
                  MyButton(
                      iconImagePath: 'lib/images/pay-per-click.png',
                      buttonText: 'PAY'),
                  // Bills Button
                  MyButton(
                      iconImagePath: 'lib/images/bills.png',
                      buttonText: 'BILLS')
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //Column -> Stats + Transactions
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    //Statistics
                    MyListTile(
                        iconImagePath: 'lib/images/Statistics.png',
                        tileTitle: 'Statistics',
                        tileSubTitle: 'Payments                 '),
                    SizedBox(
                      height: 8,
                    ),
                    MyListTile(
                        iconImagePath: 'lib/images/transactions.png',
                        tileTitle: 'Transactions',
                        tileSubTitle: 'Transaction History'),
                  ],
                ),
              ),
            )
            //Bottom Nav Bar
          ],
        ),
      ),
    );
  }
}
