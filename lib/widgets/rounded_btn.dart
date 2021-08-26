import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final double verticalPading;
  final double fontSize;
  final Function press;

  RoundedButton(
      {required this.text,
      this.verticalPading = 16,
      this.fontSize = 14,
      required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        press();
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 16),
        padding: EdgeInsets.symmetric(vertical: verticalPading, horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 15),
                blurRadius: 30,
                color: Color(0xFF66666).withOpacity(.20))
          ],
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
