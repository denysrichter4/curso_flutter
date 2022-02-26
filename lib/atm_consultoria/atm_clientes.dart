import 'package:flutter/material.dart';

class AtmClientes extends StatefulWidget {
  const AtmClientes({Key? key}) : super(key: key);

  @override
  _AtmClientesState createState() => _AtmClientesState();
}

class _AtmClientesState extends State<AtmClientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Clientes"),
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
                      Image.asset("images/atm_consultoria/detalhe_cliente.png"),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          "Clientes",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: 16),
                  child: Column(
                    children: [
                      Image.asset("images/atm_consultoria/cliente1.png"),
                      Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: Text(
                          "Empresa de software",
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: 16),
                  child: Column(
                    children: [
                      Image.asset("images/atm_consultoria/cliente2.png"),
                      Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: Text(
                          "Empresa de auditoria",
                        ),
                      ),
                    ],
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
