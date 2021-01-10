import 'package:flutter/material.dart';

import 'Responsavel.dart';
import 'ServicesResponsavel.dart';

class DemoResponsavel extends StatefulWidget {

  DemoResponsavel() : super();

  final String title = 'Carregando...';

  @override
  DemoResponsavelState createState() => DemoResponsavelState();


}

class DemoResponsavelState extends State<DemoResponsavel>{

  List<Responsavel> _responsavel;
  GlobalKey<ScaffoldState> _scaffoldKey;
  Responsavel _select;
  bool _isUpdate;
  String _titulo;

  @override
  void InitState(){
    super.initState();
    _responsavel = [];
    _isUpdate = false;
    _titulo = widget.title;
    _scaffoldKey = GlobalKey();
  }

  _showTitle(String msg){
    setState((){
      _titulo = msg;
    });
  }

  _getResponsavel(){
    _showTitle('Carregando...');
    ServicesResponsavel.getResponsavel().then((responsavel){
      setState((){
        _responsavel = responsavel;
      });
    });
  }

  @override
  SingleChildScrollView _dados(){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
            columns: [
              DataColumn(
                label: Text("#id"),
              ),
              DataColumn(
                label: Text("Nome"),
              ),
              DataColumn(
                label: Text("Email"),
              ),
              DataColumn(
                label: Text("Senha"),
              ),
            ],
            rows: _responsavel.map(
              (responsavel) => DataRow(cells: [
                DataCell(
                  Text(responsavel.nome),
                ),
                DataCell(
                  Text(responsavel.email),
                ),
                DataCell(
                  Text(responsavel.senha),
                ),
              ]),
          ).toList(),
        ),
      
      ));
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(_titulo),
        actions: <Widget>[
          IconButton(
            icon: IconButton(Icons.refresh),
          )
        ]
      ),
    )
  }

}

