import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Color.fromARGB(255, 230, 240, 255),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Primera linea'),
              Container(
                height: 50,
                width: 50,
                color: Colors.blue,
              ),
              Text(
                'Segunda linea',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                height: 100,
                width: 50,
                color: Colors.green,
              ),
            ],
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start ,
            verticalDirection: VerticalDirection.down,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(Screen());
}
