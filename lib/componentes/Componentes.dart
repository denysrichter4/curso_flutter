
import 'package:flutter/material.dart';

class Componentes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Container(
        margin: EdgeInsets.all(24),
        color: Colors.white,
        child: Column(children: [
          Text(
            "Hello World",
            style: TextStyle(
              fontSize: 40,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              decorationColor: Colors.greenAccent,
              decorationStyle: TextDecorationStyle.solid,
              color: Colors.black

            ),
          )
        ],)
      )
    );
  }
}