import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//void main() => runApp(Hangman());

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.black),
            //color: Colors.red,
            child: Text(
              'The word has....',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
