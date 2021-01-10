import 'package:flutter/material.dart';
import 'Responsavel.dart';
import 'Services.dart';

class Demo extends StatefulWidget{
  Demo() : super();
  final String title = 'Demo';
  @override
  DemoState createState() => DemoState();
}

class DemoState extends State<Demo>{
  List<Responsavel> _responsavel;
  GlobalKey<ScaffoldState> _scaffoldKey;
  
  TextEditingController _nomeController;
  TextEditingController _emailController;
  TextEditingController _senhaController;
  TextEditingController _telefoneController;
  TextEditingController _estadoController;
  TextEditingController _cidadeController;
  TextEditingController _bairroController;
  TextEditingController _ruaController;
  TextEditingController _numeroController;

  Responsavel _selectResponsavel;
  bool _isUpdating;
  String _titleProgress;

  @override
  void initState(){
    super.initState();
    _responsavel = [];
    _isUpdating = false;
    _titleProgress = widget.title;
    _scaffoldKey = GlobalKey();
    _nomeController = TextEditingController();
    _emailController = TextEditingController();
    _senhaController = TextEditingController();
    _telefoneController = TextEditingController();
    _estadoController = TextEditingController();
    _cidadeController = TextEditingController();
    _bairroController = TextEditingController();
    _ruaController = TextEditingController();
    _numeroController = TextEditingController();
  }

  _showProgress(String message){
    setState((){
      _titleProgress = message;
    });
  }

  _showSnackBar(context, message){
    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(message),),);
  }

  _createTable(){
    _showProgress('Criando tabela...');
    Services.createTable().then((result){
      if('ok' == result){
        _showSnackBar(context, result);
      }
    });
  }

  _addResponsavel(){

  }

  _getResponsavel(){

  }

  _updateResponsavel(){

  }

  _deleteResponsavel(){

  }

  _clearValues(){
    _nomeController.text = '';
    _emailController.text = '';
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(_titleProgress),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add), 
            onPressed: (){
              _createTable();
            },
          ),
          IconButton(
            icon: Icon(Icons.refresh), 
            onPressed: (){
              _getResponsavel();
            },
          )
        ],
      ),
      body: Container (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _nomeController,
                decoration: InputDecoration.collapsed(
                  hintText: 'Nome',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration.collapsed(
                  hintText: 'E-mail',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _senhaController,
                decoration: InputDecoration.collapsed(
                  hintText: 'Senha',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _telefoneController,
                decoration: InputDecoration.collapsed(
                  hintText: 'Telefone',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _estadoController,
                decoration: InputDecoration.collapsed(
                  hintText: 'Estado',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _cidadeController,
                decoration: InputDecoration.collapsed(
                  hintText: 'Cidade',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _bairroController,
                decoration: InputDecoration.collapsed(
                  hintText: 'Bairro',
                ),
              ),
            ),
            _isUpdating ?
            Row(
              children: <Widget>[
                OutlineButton(
                  child: Text('ATUALIZAR'),
                  onPressed: (){
                    _updateResponsavel();
                  },
                ),
                 OutlineButton(
                  child: Text('CANCELAR'),
                  onPressed: (){
                    setState((){
                      _isUpdating = false;
                    });
                    _clearValues();
                  },
                )
              ],
            ) : Container(),
          ],
        ),
      )
    );
  }

}