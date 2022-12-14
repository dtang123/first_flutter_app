import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  Color textColor = Colors.cyan;

  void poopClicked() {
    Random rng = Random();
    setState(() {
      textColor = Color.fromRGBO(
          rng.nextInt(256), rng.nextInt(256), rng.nextInt(256), .3);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Click the poo'),
          backgroundColor: Colors.brown.shade400,
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Dookie',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 100,
                  ),
                ),
                SizedBox(
                  height: 256.0,
                  width: 256.0,
                  child: IconButton(
                  icon: Image(image: AssetImage('images/pile-of-poo_1f4a9.gif')),
                  onPressed: () {
                  poopClicked();
                },),
                )
            ],)
          ),
        ),
      );
  }
}
