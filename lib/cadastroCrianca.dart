import 'package:flutter/material.dart';

class CadCriancaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
        child: Column(children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 70, right: 12),
              child: new Image(
                width: 170,
                height: 170,
                image: new AssetImage('assets/images/location.png'),
              ),
            ),
          ),
          Container(
            child: Text(
              "Cadastro da Criança",
              style: TextStyle(
                color: Colors.green,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            padding: EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 4),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[200]),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[200]),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                filled: true,
                fillColor: Colors.grey[200],
                hintText: 'Nome',
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            padding: EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 4),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[200]),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[200]),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                filled: true,
                fillColor: Colors.grey[200],
                hintText: 'Sexo',
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            padding: EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 4),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[200]),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[200]),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                filled: true,
                fillColor: Colors.grey[200],
                hintText: 'Grau de Parentesco',
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            padding: EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 4),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[200]),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[200]),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                filled: true,
                fillColor: Colors.grey[200],
                hintText: 'Cor do Cabelo',
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            padding: EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 4),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[200]),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[200]),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                filled: true,
                fillColor: Colors.grey[200],
                hintText: 'Cor dos Olhos',
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            padding: EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 4),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[200]),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[200]),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                filled: true,
                fillColor: Colors.grey[200],
                hintText: 'Tom da Pele',
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.2,
            padding: EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 10),
            child: TextFormField(
              maxLines: 5,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[200]),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[200]),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                filled: true,
                fillColor: Colors.grey[200],
                hintText: 'Descrição Adicional',
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.3,
            height: 40,
            child: RaisedButton(
              child: new Text('Finalizar Cadastro'),
              color: Colors.black,
              textColor: Colors.white,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10)),
              onPressed: () {
                //Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 10)),
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.3,
            height: 40,
            child: RaisedButton(
              child: new Text('Cancelar'),
              color: Colors.black,
              textColor: Colors.white,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10)),
              onPressed: () {
                //Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 10)),
        ]),
      ),
    ));
  }
}
