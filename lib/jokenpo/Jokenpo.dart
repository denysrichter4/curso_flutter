
import 'dart:math';
import 'package:flutter/material.dart';

class Jokenpo extends StatefulWidget {
  const Jokenpo({Key? key}) : super(key: key);

  @override
  _JokenpoState createState() => _JokenpoState();
}

class _JokenpoState extends State<Jokenpo> {


  var _title = "JOKENPO";
  var _content_select_app = "Escolha do App: ";
  var _content_select_user = "Escolha uma opção abaixo: ";
  var _verify = "1, 2, 3 .... Vaaaaai!!!";
  var _imageApp = "images/jokenpo/padrao.png";
  var _selected = 4;
  var _list_images = [
    "images/jokenpo/pedra.png",
    "images/jokenpo/papel.png",
    "images/jokenpo/tesoura.png",
  ];

  void _change_image(){
    var _sort_image = Random().nextInt(_list_images.length);
    setState(() {
      _imageApp = _list_images[_sort_image];
      if(_sort_image == _selected) {
        _content_select_user = "Empatou, tente outra vez";
      }else{
        if (_sort_image == 0 && _selected == 2) {
          _content_select_user = "Você perdeu :( ";
        }
        else if (_sort_image == 2 && _selected == 0) {
          _content_select_user = "Parabéns! você ganhou!!!";
        }
        else if (_sort_image < _selected) {
          _content_select_user = "Parabéns! você ganhou!!!";
        }
        else if (_sort_image > _selected) {
          _content_select_user = "Você perdeu :(";
        }
      }
    });
  }

  void _change_number(int number){
    _selected = number;
    _change_image();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(width: 3,color: Colors.green)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(16),
              child: Text(
                _content_select_app,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 26,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Image.asset(
                _imageApp,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                _content_select_user,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 26,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () =>_change_number(0) ,
                  child: Image.asset(
                    "images/jokenpo/pedra.png",
                    height: 100,
                  ),
                ),
                GestureDetector(
                  onTap: () =>_change_number(1),
                  child: Image.asset(
                    "images/jokenpo/papel.png",
                    height: 100,
                  ),
                ),
                GestureDetector(
                  onTap: () =>_change_number(2),
                  child: Image.asset(
                    "images/jokenpo/tesoura.png",
                    height: 100,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
