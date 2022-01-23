import 'package:flutter/material.dart';
import 'package:curso_flutter/CrudSimples/models/user.dart';
import 'package:curso_flutter/CrudSimples/provider/users.dart';
import 'package:provider/provider.dart';

class UserForm extends StatefulWidget{

  @override
  _UserFormState createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  final _form = GlobalKey<FormState>();

  final Map<String, String> _formData = {};

  void _loadFormData(User user){
    if(user!=null){
      _formData['id'] = user.id;
      _formData['name'] = user.name;
      _formData['email'] = user.email;
      _formData['avatarUrl'] = user.avatarUrl;
    }else{
      _formData['id'] = "";
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final user = ModalRoute.of(context)!.settings.arguments as User;
    _loadFormData(user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Usuário'),
        actions: <Widget>[
          IconButton(
              onPressed: (){
                final isValid = _form.currentState!.validate();

                if(isValid){
                  _form.currentState!.save();
                  Provider.of<UsersProvider>(context, listen: false).put(
                    User(
                      id: _formData['id']!,
                      name: _formData['name']!,
                      email: _formData['email']!,
                      avatarUrl: _formData['avatarUrl']!,
                    ),
                  );
                  Navigator.of(context).pop();
                }
              },
              color: Colors.greenAccent,
              iconSize: 40,
              icon: Icon(Icons.save)
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
            key: _form,
            child: Column(
              children: <Widget>[
                TextFormField(
                  initialValue: _formData['name'],
                  decoration: InputDecoration(labelText: 'Nome'),
                  validator: (value){
                    if(value == null || value.trim().isEmpty){
                      return 'Nome Inválido';
                    }
                    if(value.trim().length < 3){
                      return 'Nome deve conter no mínimo 3 letras';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    if(value != null){
                      _formData['name'] = value;
                    }
                  },
                ),
                TextFormField(
                  initialValue: _formData['email'],
                  decoration: InputDecoration(labelText: 'E-mail'),
                  validator: (value){
                    if(value == null || value.trim().isEmpty){
                      return 'email Inválido';
                    }
                    return null;
                  },
                  onSaved: (value) {
                      if(value != null){
                        _formData['email'] = value;
                      }
                  },
                ),
                TextFormField(
                  initialValue: _formData['avatarUrl'],
                  decoration: InputDecoration(labelText: 'Url do Avatar'),
                  validator: (value){
                    if(value == null || value.trim().isEmpty){
                      return 'Url Inválida';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    if(value != null){
                      _formData['avatarUrl'] = value;
                    }
                  },
                ),
              ],
            )
        ),
      ),
    );
  }
}