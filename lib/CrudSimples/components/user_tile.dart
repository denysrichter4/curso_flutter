import 'package:flutter/material.dart';
import 'package:curso_flutter/CrudSimples/models/user.dart';
import 'package:curso_flutter/CrudSimples/provider/users.dart';
import 'package:curso_flutter/CrudSimples/routes/app_routes.dart';
import 'package:provider/provider.dart';

class UserTile extends StatelessWidget{
  final User user;
  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
    ? CircleAvatar(child: Icon(Icons.person))
    : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
                onPressed: (){
                  Navigator.of(context).pushNamed(
                      AppRoutes.USER_FORM,
                      arguments: user,
                  );
                },
                color: Colors.orangeAccent,
                icon: Icon(Icons.edit)
            ),
            IconButton(
                onPressed: (){
                  showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: Text('Excluir Usuário'),
                        content: Text('tem certeza???'),
                        actions: <Widget>[
                          FlatButton(
                              onPressed: (){
                                Navigator.of(ctx).pop();
                              },
                              child: Text('Não'),
                          ),
                          FlatButton(
                            onPressed: (){
                              Provider.of<UsersProvider>(context, listen:false).remove(user);
                              Navigator.of(ctx).pop();
                            },
                            child: Text('Sim'),
                          ),
                        ],
                      ),
                  );
                },
                color: Colors.red,
                icon: Icon(Icons.delete_forever)
            )
          ],
        ),
      )
    );
  }
}