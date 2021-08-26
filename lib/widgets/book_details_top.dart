//Following is teh stateless widget to show the book deatails at the top
import 'package:e_book_ui_kit/widgets/rounded_btn.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'book_rating.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Crushing &",
              style:
                  Theme.of(context).textTheme.display1!.copyWith(fontSize: 28),
            ),
            Text(
              "Influence",
              style: Theme.of(context)
                  .textTheme
                  .display1!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'When the earth was flat and everyone wanted to win the game of best and people when the earth was flat and everyone wanted to win the game of best and people',
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 10, color: kLightBlackColor),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RoundedButton(
                        text: "Read",
                        press: () {},
                        verticalPading: 10,
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: null, icon: Icon(Icons.favorite_border)),
                    BookRating("4.9"),
                  ],
                ),
              ],
            ),
          ],
        )),

        //The image of the book
        Image.asset(
          "assets/images/book-1.png",
          height: 200,
        )
      ],
    );
  }
}
