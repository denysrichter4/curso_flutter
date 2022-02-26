import 'package:flutter/material.dart';

class AtmContato extends StatefulWidget {
  const AtmContato({Key? key}) : super(key: key);

  @override
  _AtmContatoState createState() => _AtmContatoState();
}

class _AtmContatoState extends State<AtmContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Contato"),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: Row(
                    children: [
                      Image.asset("images/atm_consultoria/detalhe_contato.png"),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          "Contato",
                          style: TextStyle(
                              color: Colors.greenAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 16),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Email: consultoria@atm.com.br",
                  ),
                ),
                Container(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Telefone: (11) 99999-9999",
                  ),
                ),
                Container(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Celular: (11) 99999-9999",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
