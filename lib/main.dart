/*
QUESTION:
2    Flutter: Hangman game
Create the user interface and the game logic for the popular paper game, hangman! The focus of this project will be the UI/UX design, implementation of the game logic and structure of the code.
a Minimum requirements (80%)
•Homescreen.dart
–A nice looking Home screen that has a "Start Game" button - maybe summary for the rules of the game, or fun gif / design that gets the user excited to play.The game starts with randomly picked word / sentence from a list.
•Gamescreen.dart
–Ability to input a character
–UI that shows how many characters are in the word / sentence.
–Place to keep track of incorrectly guessed letters.
–Place for the hangman art - which will update as the game progresses (with each failure).

Additional requirements (20%) - Pick one
•Input custom words / sentences
–Update the starting screen to allow the user to start the game by receiving a word / sentence randomly selected for him, or, they can input the word / sentence themselves. That would allow the user to input his own challenge for oth-ers to attempt.
•Change difficulty
–Change the rules of hangman, to allow the user to attempt to solve using easy,medium or hard mode. It’s up the the creator to implement those states - but they could include fewer errors allowed, hide some or all of the wrongly guessed characters or randomly remove successfully guessed character so they have to input it again. Dealers choice.
•Hints
–Allow the user to get a hint of what the word is, at a cost of a failed guess at-tempt.
•Other
–Anything other that you might think of that would make the game more fun and engaging!
 */
import 'package:flutter/material.dart';
import 'package:flutter_hangman/homescreen.dart';

void main() => runApp(Hangman());

class Hangman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HangmanPage(),
    );
  }
}

class HangmanPage extends StatefulWidget {
  const HangmanPage({Key? key}) : super(key: key);

  @override
  _HangmanPageState createState() => _HangmanPageState();
}

class _HangmanPageState extends State<HangmanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('HANGMAN GAME'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/hangman_backgroundimage.PNG'),
            fit: BoxFit.fill,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 15,
                child: Center(
                  child: Text(
                    'Hangman is a fun game',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  style: TextButton.styleFrom(
                      primary: Colors.white, backgroundColor: Colors.green),
                  child: Text(
                    'Start',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
