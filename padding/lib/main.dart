import 'package:flutter/material.dart';

void main() {
  runApp(Screen());
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Container(
          color: Colors.deepOrange,
        ),
      ),
    );
  }
}
