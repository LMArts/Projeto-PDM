  
import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
   TextEditingController  email, senha;


  @override
    void initState() {
      super.initState();
      email = new TextEditingController();
      senha = new TextEditingController();
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
                width: 150,
                height: 150,
                child: Image.asset('assets/images/location.png'),
              ),
              Container(
                height: 10,
              ),
              TextField(
                controller: email,
                decoration: InputDecoration(
                    labelText: "email", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: senha,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "senha", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 5,
              ),
              MaterialButton(
                onPressed: () => {
                    loginResp(email.text, senha.text),
                    
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5)),
                child: Text(
                  'Entrar',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                color: Colors.black,
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
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    ));
  }
   void loginResp(String email, String senha)async {
    var url = "http://192.168.0.13/pdm/login.php";
    var data ={
      "email": email,
      "senha": senha,
    };
    var res = http.post(url, body: data);
   
    print(res);
    if(res == "Success"){

      Navigator.pushReplacementNamed(context, '/home');
    
    }else{
      Fluttertoast.showToast(
        msg: "Login efetuado com sucesso!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
    Navigator.pushReplacementNamed(context, '/home');
    }
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 3c29736bf6137c21d547067e59d3ce85709da1a0
