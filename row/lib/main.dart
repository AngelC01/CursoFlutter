import 'package:flutter/material.dart';

class Screen  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle style= TextStyle(
      fontSize: 50,
    );
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            children: <Widget>[
              Text('uno',style: style,),
              Text('dos',style: style.copyWith(
                fontSize: 35,
              ),),
              Text('tres',style: style.copyWith(
                fontSize: 80,
                fontWeight:  FontWeight.bold,
                color: Colors.red,
              ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
          ),
        ),
      ),
    );
  }
}


void main() {
  runApp(Screen());
}