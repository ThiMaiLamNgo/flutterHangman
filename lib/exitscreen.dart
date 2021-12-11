import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Exit screen'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.blue),
          child: Text('Close app'),
          onPressed: () {
            SystemNavigator.pop();
            //onPressed: ()=> exit(0),
            //tooltip: 'Close app',
            //Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
