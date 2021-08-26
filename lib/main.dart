import 'package:e_book_ui_kit/constants.dart';
import 'package:e_book_ui_kit/screens/home_screen.dart';
import 'package:e_book_ui_kit/widgets/rounded_btn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      theme: ThemeData(
        scaffoldBackgroundColor:
            Colors.white, //Deafault screen background color
        textTheme: Theme.of(context).textTheme.apply(displayColor: kBlackColor),
      ),
      home: WelcomeScreen(),
    );
  }
}

//First, we need a welcome screen
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Bitmap.jpg"),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Following is the rich text to display the name
            RichText(
                text: TextSpan(
                    style: Theme.of(context).textTheme.display3,
                    children: [
                  //The first psrt of name
                  TextSpan(
                    text: "flamin",
                  ),

                  //Teh second part of the name
                  TextSpan(
                      text: "go.",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ])),

            SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: RoundedButton(
                  text: 'Start reading',
                  fontSize: 20,
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    }));
                  },
                )),
          ],
        ),
      ),
    );
  }
}
