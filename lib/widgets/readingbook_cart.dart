//Following is a separete widget created for carsd of books
import 'package:e_book_ui_kit/widgets/two_sided_round_btn.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'book_rating.dart';

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  final String rating;
  final Function pressDetail;
  final Function pressRaed;

  const ReadingListCard(
      {required this.image,
      required this.title,
      required this.author,
      required this.rating,
      required this.pressDetail,
      required this.pressRaed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      height: 245,
      width: 202,
      child: Stack(
        children: [
          //The inner container of the stack
          Positioned(
            bottom: 0,
            left: 0,
            right:
                0, //Position the inner conatiner a little down so that images looks overlapped
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 33,
                      color: kShadowColor),
                ],
              ),
            ),
          ),
          //The image of the book to overlap the inner conatiner in stack
          Image.asset(
            image,
            width: 150,
          ),
          //Now the third part, for text things related to book details
          Positioned(
              top: 35,
              right: 10,
              child: Column(
                children: [
                  //The icon btn for favourite marking
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                  ),
                  //The othet container after the favourite btn
                  BookRating(rating),
                ],
              )),

          //The name and writer of the book
          Positioned(
            top: 160,
            child: Container(
              height: 85,
              width: 202,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                          style: TextStyle(color: kBlackColor),
                          children: [
                            TextSpan(
                                text: '$title\n',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: author,
                                style: TextStyle(color: kLightBlackColor))
                          ]),
                    ),
                  ),

                  Spacer(),
                  //Now the row, bottom of name
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          pressDetail();
                        },
                        child: Container(
                          width: 101,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: Text('Details'),
                        ),
                      ),
                      //The read button
                      TwoSidedRoundButton(
                        text: 'Read',
                        press: () {
                          pressRaed();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
