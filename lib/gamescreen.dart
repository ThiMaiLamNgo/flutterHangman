import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'wordbank.dart';

//void main() => runApp(Hangman());

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Screen'),
      ),
      body: Container(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Text(
                      'currentword',
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'display',
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Text(
                      'currentword',
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter a search term',
                          ),
                        ),
                        Text(''),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
