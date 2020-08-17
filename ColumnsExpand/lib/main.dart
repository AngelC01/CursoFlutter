import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
                height: 50,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.green,
                height: 100,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(Screen());
}
