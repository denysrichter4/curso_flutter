import 'package:curso_flutter/atm_consultoria/atm_home.dart';
import 'package:curso_flutter/jokenpo/Jokenpo.dart';
import 'package:curso_flutter/salario_liquido/presenter/salario_view.dart';
import 'package:flutter/material.dart';
import 'package:curso_flutter/CrudSimples/provider/users.dart';
import 'package:curso_flutter/CrudSimples/routes/app_routes.dart';
import 'package:curso_flutter/CrudSimples/views/user_form.dart';
import 'package:curso_flutter/componentes/Componentes.dart';
import 'package:curso_flutter/frases_do_dia/FrasesDoDia.dart';
import 'package:curso_flutter/alcool_ou_gasolina/alcool_ou_gasolina.dart';
import 'package:curso_flutter/lista_de_todos_os_apps/routes.dart';
import 'package:provider/provider.dart';

import '../CrudSimples/views/users_list.dart';

class ListaDeApps extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(
          create: (ctx) => UsersProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          Routes.HOME: (_)=> MyappHomeList(),
          Routes.COMPONENTES: (_)=> Componentes(),
          Routes.CRUD_SIMPLES: (_)=> UserList(),
          Routes.FRASES_DO_DIA: (_)=> FrasesDoDia(),
          Routes.JOKENPO: (_)=> Jokenpo(),
          Routes.ALCOOL_OU_GASOLINA: (_)=> AlcoolOuGasolina(),
          Routes.SALARIO_LIQUIDO: (_)=> SalarioView(),
          Routes.ATM_CONSULTORIA: (_)=> HomeAtm(),
          AppRoutes.USER_FORM: (_)=> UserForm()
        },
      ),
    );
  }
}

class MyappHomeList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Apps'),
      ),
      body: ListView(
        padding: EdgeInsets.all(40),
        children: <Widget>[
          TextButton(
              onPressed: (){
                Navigator.of(context).pushNamed(
                  Routes.COMPONENTES
                );
              },
            child:Text(
              'Componentes',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          TextButton(
              onPressed: (){
                Navigator.of(context).pushNamed(
                  Routes.CRUD_SIMPLES
                );
              },
            child:Text(
              'CRUD Simples',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          TextButton(
              onPressed: (){
                Navigator.of(context).pushNamed(
                  Routes.FRASES_DO_DIA
                );
              },
            child:Text(
              'Frases do Dia',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          TextButton(
            onPressed: (){
              Navigator.of(context).pushNamed(
                  Routes.JOKENPO
              );
            },
            child:Text(
              'Jokenpo',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          TextButton(
            onPressed: (){
              Navigator.of(context).pushNamed(
                  Routes.ALCOOL_OU_GASOLINA
              );
            },
            child:Text(
              '??lcool ou Gasolina?',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          TextButton(
            onPressed: (){
              Navigator.of(context).pushNamed(
                  Routes.SALARIO_LIQUIDO
              );
            },
            child:Text(
              'C??lculo do Sal??rio L??quido',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          TextButton(
            onPressed: (){
              Navigator.of(context).pushNamed(
                  Routes.ATM_CONSULTORIA
              );
            },
            child:Text(
              'ATM Consultoria',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}