/*
QUESTION:
2    Flutter: Hangman game
Create the user interface and the game logic for the popular paper game, hangman! The focus of this project will be the UI/UX design, implementation of the game logic and structure of the code.
a Minimum requirements (80%)
•Homescreen.dart
–A nice looking Home screen that has a "Start Game" button - maybe summary for the rules of the game,
 or fun gif / design that gets the user excited to play.
 The game starts with randomly picked word / sentence from a list.
•Gamescreen.dart
–Ability to input a character
–UI that shows how many characters are in the word / sentence.
–Place to keep track of incorrectly guessed letters.
–Place for the hangman art - which will update as the game progresses (with each failure).

Additional requirements (20%) - Pick one
•Input custom words / sentences
–Update the starting screen to allow the user to start the game by receiving a word / sentence randomly selected for him,
 or, they can input the word / sentence themselves. That would allow the user to input his own challenge for oth-ers to attempt.
•Change difficulty
–Change the rules of hangman,
to allow the user to attempt to solve using easy,medium or hard mode. It’s up the the creator to implement those states - but they could include fewer errors allowed, hide some or all of the wrongly guessed characters or randomly remove successfully guessed character so they have to input it again. Dealers choice.
•Hints
–Allow the user to get a hint of what the word is, at a cost of a failed guess at-tempt.
•Other
–Anything other that you might think of that would make the game more fun and engaging!
 */
import 'package:flutter/material.dart';

import 'homescreen.dart';
import 'startscreen.dart';
import 'exitscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // the home property is used to define where the app should start, which screen it should display first - here is Screen0
      // But instead of it we can also use the initialRoute but we have to give the initialRoute  a string to tell it to start off at Screen0.
      //Vay ta bo home property va sd initialRoute.
      // ta chi sd 1 trong 2 cai nay ma k the dung ca 2. Neu dung ca 2 chuong trinh bao loi.
      home: Homescreen(),
      //initialRoute: '/zero',
      routes: {
        //Using dart map (key:value) to make router
        // When navigating to the "/" route, build the FirstScreen widget.
        '/zero': (context) => Homescreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/first': (context) => StartScreen(),
        '/second': (context) => ExitScreen(),
      },
    );
  }
}
