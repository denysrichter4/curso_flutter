import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AtmEmpresa extends StatefulWidget {
  const AtmEmpresa({Key? key}) : super(key: key);

  @override
  _AtmEmpresaState createState() => _AtmEmpresaState();
}

class _AtmEmpresaState extends State<AtmEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("A Empresa"),
        backgroundColor: Colors.deepOrangeAccent,
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
                      Image.asset("images/atm_consultoria/detalhe_empresa.png"),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          "Sobre a empresa",
                          style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                      " Vivamus efficitur dapibus sapien, eget elementum orci"
                      " dapibus quis. Sed volutpat lectus non sapien hendrerit,"
                      " semper fringilla elit laoreet. In accumsan, massa et convallis"
                      " ullamcorper, justo tortor venenatis nisi, nec dapibus massa elit "
                      "id libero. Class aptent taciti sociosqu ad litora torquent per conubia "
                      "nostra, per inceptos himenaeos. In vulputate eu elit sit amet convallis. "
                      "Duis malesuada sit amet sem non volutpat. Quisque volutpat, justo non fringilla "
                      "pulvinar, massa ante egestas augue, non ullamcorper nibh tellus nec enim. Suspendisse "
                      "potenti. In vitae tortor condimentum, dapibus metus at, condimentum sem. Sed vel convallis "
                      "mauris. Quisque ut leo commodo, pulvinar metus ut, dignissim odio. Fusce scelerisque urna et "
                      "rutrum congue. Phasellus eu diam volutpat, varius tortor gravida, aliquet tellus. Donec blandit "
                      " Vivamus efficitur dapibus sapien, eget elementum orci"
                      " dapibus quis. Sed volutpat lectus non sapien hendrerit,"
                      " semper fringilla elit laoreet. In accumsan, massa et convallis"
                      " ullamcorper, justo tortor venenatis nisi, nec dapibus massa elit "
                      "id libero. Class aptent taciti sociosqu ad litora torquent per conubia "
                      "nostra, per inceptos himenaeos. In vulputate eu elit sit amet convallis. "
                      "Duis malesuada sit amet sem non volutpat. Quisque volutpat, justo non fringilla "
                      "pulvinar, massa ante egestas augue, non ullamcorper nibh tellus nec enim. Suspendisse "
                      "potenti. In vitae tortor condimentum, dapibus metus at, condimentum sem. Sed vel convallis "
                      "mauris. Quisque ut leo commodo, pulvinar metus ut, dignissim odio. Fusce scelerisque urna et "
                      "rutrum congue. Phasellus eu diam volutpat, varius tortor gravida, aliquet tellus. Donec blandit "
                      " Vivamus efficitur dapibus sapien, eget elementum orci"
                      " dapibus quis. Sed volutpat lectus non sapien hendrerit,"
                      " semper fringilla elit laoreet. In accumsan, massa et convallis"
                      " ullamcorper, justo tortor venenatis nisi, nec dapibus massa elit "
                      "id libero. Class aptent taciti sociosqu ad litora torquent per conubia "
                      "nostra, per inceptos himenaeos. In vulputate eu elit sit amet convallis. "
                      "Duis malesuada sit amet sem non volutpat. Quisque volutpat, justo non fringilla "
                      "pulvinar, massa ante egestas augue, non ullamcorper nibh tellus nec enim. Suspendisse "
                      "potenti. In vitae tortor condimentum, dapibus metus at, condimentum sem. Sed vel convallis "
                      "mauris. Quisque ut leo commodo, pulvinar metus ut, dignissim odio. Fusce scelerisque urna et "
                      "rutrum congue. Phasellus eu diam volutpat, varius tortor gravida, aliquet tellus. Donec blandit "
                      " Vivamus efficitur dapibus sapien, eget elementum orci"
                      " dapibus quis. Sed volutpat lectus non sapien hendrerit,"
                      " semper fringilla elit laoreet. In accumsan, massa et convallis"
                      " ullamcorper, justo tortor venenatis nisi, nec dapibus massa elit "
                      "id libero. Class aptent taciti sociosqu ad litora torquent per conubia "
                      "nostra, per inceptos himenaeos. In vulputate eu elit sit amet convallis. "
                      "Duis malesuada sit amet sem non volutpat. Quisque volutpat, justo non fringilla "
                      "pulvinar, massa ante egestas augue, non ullamcorper nibh tellus nec enim. Suspendisse "
                      "potenti. In vitae tortor condimentum, dapibus metus at, condimentum sem. Sed vel convallis "
                      "mauris. Quisque ut leo commodo, pulvinar metus ut, dignissim odio. Fusce scelerisque urna et "
                      "rutrum congue. Phasellus eu diam volutpat, varius tortor gravida, aliquet tellus. Donec blandit ",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
