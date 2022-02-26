import 'package:flutter/material.dart';

class AtmServicos extends StatefulWidget {
  const AtmServicos({Key? key}) : super(key: key);

  @override
  _AtmServicosState createState() => _AtmServicosState();
}

class _AtmServicosState extends State<AtmServicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Serviços"),
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
                      Image.asset("images/atm_consultoria/detalhe_servico.png"),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          "Nossos serviços",
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
                  padding: EdgeInsets.only(bottom: 16),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Consultoria",
                  ),
                ),
                Container(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Preços: ",
                  ),
                ),
                Container(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Acompanhamento de projetos: ",
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
