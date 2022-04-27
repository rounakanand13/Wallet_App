// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String iconImagePath;
  final String tileTitle;
  final String tileSubTitle;

  const MyListTile({
    Key? key,
    required this.iconImagePath,
    required this.tileTitle,
    required this.tileSubTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Icon

            Container(
              height: 80,
              //width: 80,
              decoration: BoxDecoration(color: Colors.white),
              child: Image.asset(iconImagePath),
            ),
          ],
        ),
        SizedBox(
          width: 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tileTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              tileSubTitle,
              style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
            ),
          ],
        ),
        //FIX THIS ASAP
        SizedBox(
          width: 50,
        ),
        Icon(Icons.arrow_forward_ios)
      ],
    );
  }
}
