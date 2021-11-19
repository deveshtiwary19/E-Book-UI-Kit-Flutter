import 'package:e_book_ui_kit/constants.dart';
import 'package:e_book_ui_kit/screens/details_screen.dart';
import 'package:e_book_ui_kit/widgets/book_rating.dart';
import 'package:e_book_ui_kit/widgets/readingbook_cart.dart';
import 'package:e_book_ui_kit/widgets/two_sided_round_btn.dart';
import 'package:flutter/material.dart';

//FGollowing, is the home screen that user encouters after clicking on start reading
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //Getting the screen size, and holding in variable

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/main_page_bg.png"),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fitWidth),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * .1, //Taking 10% of screen height
                  ),
                  //Following is the heading text at the top
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.headline4,
                            children: [
                          TextSpan(text: "What are you\nreading "),
                          TextSpan(
                              text: "today?",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ])),
                  ),
                  //Leaving a space of 30
                  SizedBox(
                    height: 30,
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadingListCard(
                          image: "assets/images/book-1.png",
                          title: "Crushing & Influence",
                          author: "Gary Venchuk",
                          rating: "4.9",
                          pressRaed: () {
                            //Starting the description screen for this book
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (c, a1, a2) => DetailsScreen(),
                                transitionsBuilder: (c, anim, a2, child) =>
                                    FadeTransition(opacity: anim, child: child),
                                transitionDuration: Duration(milliseconds: 800),
                              ),
                            );
                          },
                          pressDetail: () {
                            //Starting the description screen for this book
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (c, a1, a2) => DetailsScreen(),
                                transitionsBuilder: (c, anim, a2, child) =>
                                    FadeTransition(opacity: anim, child: child),
                                transitionDuration: Duration(milliseconds: 800),
                              ),
                            );
                          },
                        ),
                        ReadingListCard(
                          image: "assets/images/book-2.png",
                          title: "Top Ten Business Hacks",
                          author: "Herman Joel",
                          rating: "3.8",
                          pressDetail: () {},
                          pressRaed: () {},
                        ),
                        ReadingListCard(
                          image: "assets/images/book-3.png",
                          title: "How to win Friends",
                          author: "Unknown",
                          rating: "4.6",
                          pressDetail: () {},
                          pressRaed: () {},
                        ),
                        SizedBox(
                          width: 30,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.headline4,
                              children: [
                                TextSpan(text: "Best of the "),
                                TextSpan(
                                    text: "day",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ]),
                        ),
                        //Showing best of the day book
                        bestOfTheDayCard(size, context),
                        RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.headline4,
                              children: [
                                TextSpan(text: 'Continue '),
                                TextSpan(
                                    text: 'reading...',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ]),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(38.5),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 10),
                                    blurRadius: 33,
                                    color: Color(0xFFD3D3D3).withOpacity(.84))
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 30, right: 20),
                                    child: Row(
                                      children: [
                                        //Row item 1
                                        Expanded(
                                            child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Crushing & Influence",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                            ),
                                            Text(
                                              "Gary Venchuk",
                                              style: TextStyle(
                                                  color: kLightBlackColor),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Text(
                                                'Chapter 7 of 10',
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: kLightBlackColor),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            )
                                          ],
                                        )),
                                        //Row item 2
                                        Image.asset(
                                          "assets/images/book-1.png",
                                          width: 55,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                //Following container will show the status of the book reading in progress
                                Container(
                                  height: 7,
                                  width: size.width * .65,
                                  decoration: BoxDecoration(
                                      color: kProgressIndicator,
                                      borderRadius: BorderRadius.circular(7)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

//Following is teh container to show the best of the day book
  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: [
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(
                    left: 24,
                    top: 24,
                    right: size.width *
                        .35), //Adjusting text not to overlap the iamge (respective to image width we assigned)
                height: 185,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFFEAEAEA).withOpacity(.55),
                    borderRadius: BorderRadius.circular(29)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "India Times Best For 24th August 2021",
                      style: TextStyle(
                        fontSize: 10,
                        color: kLightBlackColor,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "How To Win\nFriends & Influence",
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text(
                      'Gary Venchuk',
                      style: TextStyle(color: kLightBlackColor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //The row for bottom details
                    Row(
                      children: [
                        BookRating("4.6"),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            'When the earth was flat and everyone wanted to win the game of best and people',
                            style: TextStyle(
                                fontSize: 12, color: kLightBlackColor),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          //For the Image
          Positioned(
              right: 0,
              top: 0,
              child: Image.asset(
                "assets/images/book-3.png",
                width: size.width * .37,
              )),

          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: TwoSidedRoundButton(
                text: 'Read',
                press: () {},
                radius: 24,
              ),
            ),
          )
        ],
      ),
    );
  }
}
