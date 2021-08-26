import 'package:flutter/material.dart';

import '../constants.dart';

class TwoSidedRoundButton extends StatelessWidget {
  final String text;
  final double radius;
  final Function press;

  TwoSidedRoundButton(
      {required this.text, this.radius = 29, required this.press});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: () {
        press();
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: kBlackColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radius),
                bottomRight: Radius.circular(radius))),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    ));
  }
}
