import 'package:flutter/material.dart';

class ListarCrianca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 20, left: 40, right: 40),
            child: ListView(
              children: <Widget>[
                //**************************************** Title FINDKID ************************
                Container(
                  padding: EdgeInsets.only(
                      top: 10, left: 110, right: 10, bottom: 20),
                  child: Text(
                    "Crianças",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //**************************************** TextFormField ************************
                Container(
                  alignment: Alignment.topLeft,
                  padding:
                      EdgeInsets.only(top: 15, left: 20, right: 10, bottom: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  child: Text(
                    "Ana Julia",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/cadCrianca');
                  },
                  child: Text('Adicionar Criança',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                  color: Colors.black,
                  padding:
                      EdgeInsets.only(top: 15, left: 20, right: 10, bottom: 15),
                  textColor: Colors.white,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10)),
                ),
              ],
            )));
  }
}
