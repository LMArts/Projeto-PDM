import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Responsavel.dart';

List<Responsavel> dataModel;

class ListaResponsavel extends StatefulWidget {
  @override
  _ListaResponsavelState createState() => _ListaResponsavelState();
}

class _ListaResponsavelState extends State<ListaResponsavel> {
  TextEditingController nome, email, senha, telefone;
  String id;

  @override
  void initState() {
    super.initState();
    nome = new TextEditingController();
    email = new TextEditingController();
    senha = new TextEditingController();
    telefone = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListData(),
      ),
    );
  }

  Widget ListData() {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top: 15, left: 20, right: 10, bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[300],
      ),
      child: FutureBuilder(
          future: getData(),
          builder: (context, snap) {
            if (!snap.hasData)
              return Center(
                child: CircularProgressIndicator(),
              );
            return ListView.builder(
                itemCount: dataModel.length,
                itemBuilder: (context, pos) {
                  return ListTile(
                    leading: Text(
                      dataModel[pos].nome,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    title: Text(
                      dataModel[pos].email,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Text(
                      dataModel[pos].senha,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      id = dataModel[pos].id;
                      nome.text = dataModel[pos].nome;
                      email.text = dataModel[pos].email;
                      senha.text = dataModel[pos].senha;
                      telefone.text = dataModel[pos].telefone;

                      showDialog(
                          context: context,
                          builder: (context) => updateDialog(id));
                    },

                    onLongPress: (){
                      showDialog(context: context, builder: (context) => deleteDialog(dataModel[pos].id));
                    },

                  );
                });
          }),
    );
  }

  Widget updateDialog(String id) {
    return AlertDialog(
      title: Text("Editar dados"),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            TextField(
              controller: nome,
            ),
            TextField(
              controller: email,
            ),
            TextField(
              controller: senha,
            ),
            TextField(
              controller: telefone,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        OutlineButton(
          onPressed: () {
            updateData(id, nome.text, email.text, senha.text, telefone.text);
          },
          child: Text("Atualizar"),
        )
      ],
    );
  }

  Widget deleteDialog(String id) {
    return AlertDialog(
      title: Text("Excluir?"),
      actions: <Widget>[
        OutlineButton(
          onPressed: () {
            deleteData(id);
          },
          child: Text("Excluir"),
        )
      ],
    );
  }

  Future<List> getData() async {
    var url = "http://10.0.0.106/pdm/selectResponsavel.php";
    http.Response res = await http.get(url);
    var data = jsonDecode(res.body);
    dataModel = new List();
    for (var word in data['result']) {
      String id = word['id'];
      String nome = word['nome'];
      String email = word['email'];
      String senha = word['senha'];
      String telefone = word['telefone'];
      dataModel.add(new Responsavel(id, nome, email, senha, telefone));
    }
    return dataModel;
  }

  void updateData(String id, String nome, String email, String senha,
      String telefone) async {
    var url = "http://10.0.0.106/pdm/updateResponsavel.php";

    var data = {
      "_id": id,
      "nome": nome,
      "email": email,
      "senha": senha,
      "telefone": telefone
    };
    var res = await http.post(url, body: data);
  }
  
  void deleteData(String id) async{
    var url = "http://10.0.0.106/pdm/deleteResponsavel.php";
    var data = {
      "_id": id
    };
    var res = await http.post(url, body: data);
  }

}
