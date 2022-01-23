import 'package:flutter/material.dart';
import 'package:curso_flutter/CrudSimples/components/user_tile.dart';
import 'package:curso_flutter/CrudSimples/models/user.dart';
import 'package:curso_flutter/CrudSimples/provider/users.dart';
import 'package:curso_flutter/CrudSimples/routes/app_routes.dart';
import 'package:curso_flutter/CrudSimples/views/user_form.dart';
import 'package:provider/provider.dart';


// class UserList extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers:[
//         ChangeNotifierProvider(
//         create: (ctx) => UsersProvider(),
//         ),
//       ],
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         routes: {
//           AppRoutes.HOME: (_)=> Myapp(),
//           AppRoutes.USER_FORM: (_)=> UserForm()
//         },
//       ),
//     );
//   }
// }

class UserList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final UsersProvider users = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de usuários'),
        actions: <Widget>[
          IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed(
                  AppRoutes.USER_FORM,
                  arguments: User(id: '', name: '', email: '', avatarUrl: ''),
                );
              },
              color: Colors.greenAccent,
              iconSize: 40,
              icon: Icon(Icons.group_add)
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}

