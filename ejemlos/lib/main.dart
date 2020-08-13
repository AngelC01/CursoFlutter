import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplos Flutter',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejemplo flutter'),
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            //  color: Colors.red,
            decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(
                  color: Color.fromARGB(255, 0, 0, 0),
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    offset: Offset(6,6), 
                    blurRadius: 4,
                    ),
                ]),
            child: Text('hola deqwe'),
            padding: EdgeInsets.all(10),
            constraints: BoxConstraints(
              maxWidth: 150,
              minHeight: 110, 
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(Screen1());
  /* runApp(Directionality(
    textDirection: TextDirection.ltr,
    child: Center(
      child: Text(
        'hola Flutter',
         style: TextStyle(
         fontSize: 30,
        ),
      ),
    ),
  )) ;*/
}
