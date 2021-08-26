//Following is the container to show the reating of the book
import 'package:flutter/material.dart';

import '../constants.dart';

class BookRating extends StatelessWidget {
  final String rating;

  BookRating(this.rating);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              offset: Offset(3, 7),
              blurRadius: 20,
              color: Color(0xFD3D3D3).withOpacity(.5))
        ],
      ),
      child: Column(
        children: [
          Icon(
            Icons.star,
            color: kIconColor,
            size: 15,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            rating,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
