import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//void main() => runApp(Hangman());

class Homescreen extends StatelessWidget {
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
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.green),
                //color: Colors.red,
                child: Text('Start game'),
                onPressed: () {
                  //Navigate to Screen 1
                  Navigator.pushNamed(context, '/first');
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red),
                //color: Colors.blue,
                child: Text('Exit'),
                onPressed: () {
                  //Navigate to Screen 2
                  Navigator.pushNamed(context, '/second');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
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

 */

/*
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
 */
