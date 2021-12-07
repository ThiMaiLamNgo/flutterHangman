import 'package:flutter/material.dart';
//import 'dart:ui';
//import 'wordsBank.dart';

/*
ADD SOUND AND CHECK THE CODE, BUTTON,
HOW TO GET USER INPUT, .....
 */

void main() => runApp(HangMan());

class HangMan extends StatelessWidget {
  const HangMan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.grey.shade900,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/hangman_backgroundimage.PNG'),
            fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: HangManPage(),
            ),
          ),
        ),
      ),
    );
  }
}

class HangManPage extends StatefulWidget {
  const HangManPage({Key? key}) : super(key: key);

  @override
  _HangManPageState createState() => _HangManPageState();
}

class _HangManPageState extends State<HangManPage> {
  //todo st here

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
                /*child: Text(
                //todo the rules of the game
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),

               */
                ),
          ),
        ),
        //Expanded(child: child)
      ],
    );
  }
}

//class HangManPage extends

List<String> wordBank = [
  'hello',
  'letter',
  'candy',
  'requirement',
  'machine',
  'apple'
];
/*
void randomWord() {
  int randomNumber = Random().nextInt(wordBank.length);
  String current_word = wordBank[randomNumber];
  print(current_word);
}

 */
