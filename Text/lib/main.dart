import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: SizedBox(
          width: 350,
          height: 100,
          child: Text(
            'un texto ' *10,
            textAlign: TextAlign.center,
            textScaleFactor: 0.7,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w100,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              decorationColor: Colors.blue,
              decorationThickness: 3,
              decorationStyle: TextDecorationStyle.dashed,
              backgroundColor: Colors.purple,
              shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset(5, 5),
                )
              ],
              letterSpacing: 1,
              wordSpacing: 0,
              height: 1,
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(Screen());
}
