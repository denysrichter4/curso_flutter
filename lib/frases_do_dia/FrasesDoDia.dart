import 'dart:math';
import 'package:flutter/material.dart';

class FrasesDoDia extends StatefulWidget {
  const FrasesDoDia({Key? key}) : super(key: key);

  @override
  _FrasesDoDiaState createState() => _FrasesDoDiaState();
}

class _FrasesDoDiaState extends State<FrasesDoDia> {

  var _title = "Frases do dia";
  var _frase = "Clique no botão abaixo para gerar uma frase!";
  var _list_frases = [
    "Gratidão não é pagamento, mas um reconhecimento que se demonstra no dia a dia.",
    "Água mole em pedra dura, tanto bate até que fura.",
    "O rato roeu a roupa do rei de Roma.",
    "Três prato de trigo para três tigres tristes."
  ];

  void _change_frase(){
    setState(() {
        var numeroSorteado = Random().nextInt(_list_frases.length);
        _frase = _list_frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(_title),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 3,color: Colors.amber)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
                "images/frases_do_dia/logo.png",
            ),
            Text(
              _frase,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 26,
                fontStyle: FontStyle.italic,
              ),
            ),
            RaisedButton(
                onPressed: _change_frase,
                color: Colors.green,
                child: Text(
                    "Nova Frase",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
            ),
          ],
        ),
      ),

    );
  }
}
