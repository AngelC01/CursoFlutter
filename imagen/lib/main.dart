

import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 400,
            height: 500,
            color: Colors.yellow,
            /*  child: Image.asset(
                'assets/Smite.png',
                fit: BoxFit.none,
                
                scale: 3.7,
                repeat: ImageRepeat.noRepeat,
            ), */
            child: Image.network(
                'https://statics.vrutal.com/m/2f1f/2f1f70a6abeaf948ab40398d42bb372a_thumb_fb.jpg',
                fit: BoxFit.none,
                alignment: Alignment.topCenter,
                
                scale: 5.5,
                repeat: ImageRepeat.noRepeat,
            )


            
           
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(Screen());
}
