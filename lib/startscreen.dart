import 'package:flutter/material.dart';
import 'package:flutter_hangman/gamescreen.dart';
import 'package:flutter_hangman/homescreen.dart';
import 'exitscreen.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Start game'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              //color: Colors.red,
              child: Text(
                '''
                You have to guess letters in a word, guess each character at time.\n
                You are told the number of letters in that word. Each character corresponds to an underscore.
                If the character you guessed is present in the word, the underscore will be replaced with that letter.
                If the character is not in the word you get a dash.\n
                You guess wrong more than 6 times the game ends and you restart the game.
                If you guess correctly then continue the game until the end.''',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
              onPressed: () {},
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green),
              //color: Colors.blue,
              child: Text('Game Screen'),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
          ],
        ),
      ),
    );
  }
}
