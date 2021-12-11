import 'dart:math';
import 'package:flutter/material.dart';

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
    late String current_word;
    void randomWord() {
      int randomNumber = Random().nextInt(wordBank.length);
      current_word = wordBank[randomNumber];
    }

    return Container();
  }
}

/*
String rule = '''
You have to guess letters in a word, guess each character at time.
You are told the number of letters in that word. Each character corresponds to an underscore.
If the character is present in the word, the underscore will be replaced with that letter.
If the character you guessed is not in the word you get a dash.
You guess wrong more than 6 times the game ends and you restart the game.
If you guess correctly then continue the game until the end.
''';
 */
