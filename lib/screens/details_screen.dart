import 'package:e_book_ui_kit/constants.dart';
import 'package:e_book_ui_kit/widgets/book_details_top.dart';
import 'package:e_book_ui_kit/widgets/book_rating.dart';
import 'package:e_book_ui_kit/widgets/chapter_card.dart';
import 'package:e_book_ui_kit/widgets/rounded_btn.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Getting teh screen size
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/bg.png"),
                        fit: BoxFit.fitWidth),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * .1,
                        ),
                        BookInfo()
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .4 - 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ChapterCard(
                        name: 'Money',
                        tag: 'Life is about change',
                        chapterNumber: 1,
                        press: () {},
                      ),
                      ChapterCard(
                        name: 'Power',
                        tag: 'Everything loves power',
                        chapterNumber: 2,
                        press: () {},
                      ),
                      ChapterCard(
                        name: 'Influenece',
                        tag: 'Influenec easily like never before',
                        chapterNumber: 3,
                        press: () {},
                      ),
                      ChapterCard(
                        name: 'Win',
                        tag: 'Winning is what matters',
                        chapterNumber: 4,
                        press: () {},
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ],
            ),
            //The bottom part now
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .display1!
                          .copyWith(fontSize: 28),
                      children: [
                        TextSpan(
                          text: 'You might also ',
                        ),
                        TextSpan(
                          text: 'like..',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 180,
                        width: double.infinity,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding:
                              EdgeInsets.only(top: 24, left: 24, right: 150),
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: Color(0xFFf7bfbe).withOpacity(.30),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: kBlackColor),
                                  children: [
                                    TextSpan(
                                        text:
                                            'How To Win Friends & Influenece\n',
                                        style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: 'Gary Venchuk',
                                        style: TextStyle(
                                            color: kBlackColor, fontSize: 12)),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  BookRating("4.9"),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                      child: RoundedButton(
                                    press: () {},
                                    text: 'Read',
                                    verticalPading: 10,
                                  ))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      //For Image
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(
                          "assets/images/book-3.png",
                          width: 150,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
