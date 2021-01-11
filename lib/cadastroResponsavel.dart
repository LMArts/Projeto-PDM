import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
class Register extends StatefulWidget {
  @override
  CadResponsavelPage createState() => CadResponsavelPage();
}

class CadResponsavelPage extends State<Register>  {

    TextEditingController nomeCompletoResp  = TextEditingController();
    TextEditingController sexoResp  = TextEditingController();
    TextEditingController celularResp  = TextEditingController();
    TextEditingController emailResp  = TextEditingController();
    TextEditingController senhaResp  = TextEditingController();
    TextEditingController estadoResp  = TextEditingController();
    TextEditingController cidadeResp = TextEditingController();
    TextEditingController enderecoResp  = TextEditingController();
    TextEditingController numeroResp  = TextEditingController();

    Future register()async{
      var url = 'http://localhost/loginPDM/registro.php';
      var response = await http.post(url, body:{
        
        "nomeCompletoResp"  : nomeCompletoResp.text,
        "sexoResp"  : sexoResp.text,
        "celularResp"  : celularResp.text,
        "emailResp"  :emailResp.text,
        "senhaResp"  : senhaResp.text,
        "estadoResp"  : estadoResp.text,
        "cidadeResp" : cidadeResp.text,
        "enderecoResp"  : cidadeResp.text,
        "numeroResp"  : numeroResp.text,
      });

      var data = json.decode(response.body);
      if(data == "Error"){
        Fluttertoast.showToast(
        msg: "Usuario não existe!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
      }else{
        Fluttertoast.showToast(
          msg: "Usuario registrado com sucesso!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
      }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top:20, left: 40, right: 40),
        child: ListView(
          children: <Widget>[
          //**************************************** Logotipo FINDKID ************************
           SizedBox(
              width: 250,
              height: 250,
              child: Image.asset("assets/images/location.png"),
            ),
           //**************************************** Title FINDKID ************************
            Container(
              padding: EdgeInsets.only(
                  top: 10, left: 40, right: 10, bottom: 20
                ),
                child: Text(
                  "Cadastro do responsável",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    
                  ),
                ),
              ),
               //**************************************** TextFormField ************************
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                 padding: EdgeInsets.only(
                  top: 5, bottom: 5
                ),
                child: TextFormField(
                  controller: nomeCompletoResp,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[200]),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[200]),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'Nome',
                  ),
                ),
              ),
              //**************************************** TextFormField ************************
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                 
                child: TextFormField(
                   controller: emailResp,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[200]),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[200]),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'E-mail',
                    
                  ),
                ),
              ),
              //**************************************** TextFormField ************************
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                 padding: EdgeInsets.only(
                  top: 5, bottom: 5
                ),
                child: TextFormField(
                   controller: senhaResp,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[200]),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[200]),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'Senha',
                  ),
                ),
              ),
              //**************************************** TextFormField ************************
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                 padding: EdgeInsets.only(
                  top: 5, bottom: 5
                ),
                child: TextFormField(
                   controller: celularResp,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[200]),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[200]),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'Telefone',
                  ),
                ),
              ),
              //**************************************** TextFormField ************************
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                 padding: EdgeInsets.only(
                  top: 5, bottom: 5
                ),
                child: TextFormField(
                   controller: estadoResp,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[200]),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[200]),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'Estado',
                  ),
                ),
              ),
              //**************************************** TextFormField ************************
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                 padding: EdgeInsets.only(
                  top: 5, bottom: 5
                ),
                child: TextFormField(
                   controller: cidadeResp,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[200]),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[200]),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'Cidade',
                  ),
                ),
              ),
              //**************************************** TextFormField ************************
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                 padding: EdgeInsets.only(
                  top: 5, bottom: 5
                ),
                child: TextFormField(
                   controller: enderecoResp,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[200]),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[200]),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'Rua',
                  ),
                  
                ),
              ),
              //**************************************** TextFormField ************************
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                 padding: EdgeInsets.only(
                  top: 5, bottom: 5
                ),
                child: TextFormField(
                   controller: numeroResp,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[200]),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[200]),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    hintText: 'Nº',
                  ),
                  
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //**************************************** Button ************************
              ButtonTheme(
                height: 40,
                child: RaisedButton(
                  onPressed: () => {
                    Navigator.pushReplacementNamed(context, '/home'),
                    register()
                  },
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10)),
                  child: Text(
                    "Finalizar cadastro",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  color:Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //**************************************** Button ************************
              ButtonTheme(
                height: 40,
                child: RaisedButton(
                  onPressed: () => {
                    Navigator.pushReplacementNamed(context, '/login')
                  },
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10)),
                  child: Text(
                    "Cancelar",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  color:Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
          ],
          
        )
      )
    );
  }
}