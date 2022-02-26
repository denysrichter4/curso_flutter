import 'package:curso_flutter/atm_consultoria/atm_clientes.dart';
import 'package:curso_flutter/atm_consultoria/atm_contato.dart';
import 'package:curso_flutter/atm_consultoria/atm_empresa.dart';
import 'package:curso_flutter/atm_consultoria/atm_servicos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAtm extends StatefulWidget {
  const HomeAtm({Key? key}) : super(key: key);

  @override
  _HomeAtmState createState() => _HomeAtmState();
}

class _HomeAtmState extends State<HomeAtm> {

  static const EMPRESA = '/atm_empresa';
  static const SERVICO = '/atm_servicos';
  static const CLIENTE = '/atm_clientes';
  static const CONTATO = '/atm_contato';

  Route _telas(String route){

    switch(route){
      case EMPRESA:
        return MaterialPageRoute(builder: (context) =>  AtmEmpresa());
      case SERVICO:
        return MaterialPageRoute(builder: (context) =>  AtmServicos());
      case CLIENTE:
        return MaterialPageRoute(builder: (context) =>  AtmClientes());
      case CONTATO:
        return MaterialPageRoute(builder: (context) =>  AtmContato());
      default:
        return MaterialPageRoute(builder: (context) =>  AtmEmpresa());
    }
  }

  void _abrirRota(String route){
    Navigator.push(context, _telas(route));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body:  Container(
        margin: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/atm_consultoria/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        _abrirRota(EMPRESA);
                      },
                      child: Image.asset(
                        "images/atm_consultoria/menu_empresa.png",
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        _abrirRota(SERVICO);
                      } ,
                      child: Image.asset(
                        "images/atm_consultoria/menu_servico.png",
                      ),
                    ),
                  ]
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        _abrirRota(CLIENTE);
                      }  ,
                      child: Image.asset(
                        "images/atm_consultoria/menu_cliente.png",
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        _abrirRota(CONTATO);
                      }  ,
                      child: Image.asset(
                        "images/atm_consultoria/menu_contato.png",
                      ),
                    ),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
