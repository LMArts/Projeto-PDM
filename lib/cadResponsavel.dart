import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CadResponsavel extends StatefulWidget {
  @override
  _CadResponsavelState createState() => _CadResponsavelState();
}

class _CadResponsavelState extends State<CadResponsavel> {
  TextEditingController nome, email, senha, telefone;

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
                padding: EdgeInsets.all(5),
                child: Text(
                  "Cadastro do responsável",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 10,
              ),
              TextField(
                controller: nome,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'nome', border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 5,
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
              TextField(
                controller: telefone,
                decoration: InputDecoration(
                    labelText: "telefone", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 5,
              ),
              MaterialButton(
                onPressed: () => {
                    cadastrar(nome.text, email.text, senha.text, telefone.text),
                    Navigator.pushReplacementNamed(context, '/home')
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5)),
                child: Text(
                  'Cadastrar',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                color: Colors.black,
              ),
              MaterialButton(
                onPressed: () =>
                    {Navigator.pushReplacementNamed(context, '/login')},
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5)),
                child: Text(
                  'Cancelar',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    ));
  }

  void cadastrar(String nome, String email, String senha, String telefone) {
    var url = "http://10.0.0.106/pdm/responsavel.php";
    var data = {
      "nome": nome,
      "email": email,
      "senha": senha,
      "telefone": telefone
    };
    var res = http.post(url, body: data);
  }
}
