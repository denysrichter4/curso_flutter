import 'dart:math';
import 'package:flutter/material.dart';

class AlcoolOuGasolina extends StatefulWidget {
  const AlcoolOuGasolina({Key? key}) : super(key: key);

  @override
  _AlcoolOuGasolinaState createState() => _AlcoolOuGasolinaState();
}

class _AlcoolOuGasolinaState extends State<AlcoolOuGasolina> {

  var _title = "Álcool ou Gasolina?";
  var _image = "images/alcool_ou_gasolina/logo.png";
  var _description = "Saiba qual a melhor opção "
      "para abastecimento do seu carro.";
  var _label_alcool = "Preço Álcool, ex: 1.59";
  var _label_gasolina = "Preço Gasolina, ex: 3.15";
  var _label_calcular = "Calcular";
  TextEditingController _textEditingControllerAlcool = TextEditingController();
  TextEditingController _textEditingControllerGasolina = TextEditingController();
  var _resultado = "";

  void _calculate(String alcool, String gasolina){
    setState(() {
      if(alcool.isEmpty || gasolina.isEmpty){
        _description = "Saiba qual a melhor opção "
            "para abastecimento do seu carro.";
        _resultado = "";
      }
      else{
        _description = "Essa é a melhor opção "
            "para abastecimento do seu carro: ";
        if(_toDouble(alcool) >= (_toDouble(gasolina)*0.74)){
          _resultado = "Gasolina";
        }else{
          _resultado = "Álcool";
        }
      }
    });
  }

  double _toDouble(String value){
    return double.parse(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Container(
        child: ListView(
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(24),
                  child: Image.asset(
                    _image,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    _description + _resultado,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: TextField(
                    textAlign: TextAlign.start,
                    controller: _textEditingControllerAlcool,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: _label_alcool,
                    ),
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: TextField(
                    textAlign: TextAlign.start,
                    controller: _textEditingControllerGasolina,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: _label_gasolina,
                    ),
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: ElevatedButton(
                    onPressed: (){
                     _calculate(_textEditingControllerAlcool.text, _textEditingControllerGasolina.text);
                    },
                    child: Text(
                      _label_calcular,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                ]
            ),
          ],
        ),
      ),
    );
  }
}
