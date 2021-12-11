import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'wordbank.dart';

//void main() => runApp(Hangman());

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RandomWord();
  }
}

class RandomWord extends StatefulWidget {
  @override
  _RandomWordState createState() => _RandomWordState();
}

class _RandomWordState extends State<RandomWord> {
  List<String> wordBank = [
    'hello',
    'letter',
    'candy',
    'requirement',
    'machine',
    'apple'
  ];
  @override
  Widget build(BuildContext context) {
    late String currentWord, displayWord;
    void randomWord() {
      int randomNumber = Random().nextInt(wordBank.length);
      currentWord = wordBank[randomNumber];
      for (int i = 0; i < wordBank.length; i++) {
        displayWord += '_';
      }
    }

    return Container(
      child: Text(displayWord),
    );
  }
}
