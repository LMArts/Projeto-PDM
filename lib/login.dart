import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
    TextEditingController emailResp  = TextEditingController();
    TextEditingController senhaResp  = TextEditingController();

  Future login()async{
      var url = 'http://localhost/loginPDM/login.php';
      var response = await http.post(url, body:{       
        "emailResp"  : emailResp.text,
        "senhaResp"  : senhaResp.text,
      });

      var data = json.decode(response.body);
      if(data == "Success"){
        Fluttertoast.showToast(
        msg: "Login realizado com sucesso!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
    );
     Navigator.pushReplacementNamed(context, '/menu');
      }else{
        Fluttertoast.showToast(
          msg: "Usuario ou senha incorreta!",
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
        body: SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/images/location.png'),
              ),
              Container(height: 20,),
              TextField(
                controller: emailResp,
                onChanged: (text) {
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "E-mail", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                 controller: senhaResp,
                onChanged: (text) {
                },
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Senha", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                  login();
                },
                child: Text('Entrar'),
                color: Colors.black,
                textColor: Colors.white,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5)),
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/cadResponsavel');
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      'Ainda não tenho cadastro!',
                      style: TextStyle(color: Colors.grey, fontSize: 17.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
