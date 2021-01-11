import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CadCrianca extends StatefulWidget {
  @override
  _CadCriancaState createState() => _CadCriancaState();
}

class _CadCriancaState extends State<CadCrianca> {
  TextEditingController nome, dataNasc, sexo, descricao;

  @override
  void initState() {
    super.initState();
    nome = new TextEditingController();
    dataNasc = new TextEditingController();
    sexo = new TextEditingController();
    descricao = new TextEditingController();
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
                  "Cadastro da criança",
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
                    labelText: 'Nome', border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: dataNasc,
                decoration: InputDecoration(
                    labelText: "Data de nascimento", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: sexo,
                decoration: InputDecoration(
                    labelText: "Sexo", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                controller: descricao,
                decoration: InputDecoration(
                    labelText: "Descrição adicional", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 5,
              ),
              MaterialButton(
                onPressed: () => {
                    cadastrar(nome.text, dataNasc.text, sexo.text, descricao.text),
                    Navigator.pushReplacementNamed(context, '/listarCrianca')
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
                    {Navigator.pushReplacementNamed(context, '/listarCrianca')},
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

  void cadastrar(String nome, String dataNasc, String sexo, String descricao) {
    var url = "http://10.0.0.106/pdm/crianca.php";
    var data = {
      "nome": nome,
      "dataNasc": dataNasc,
      "sexo": sexo,
      "descricao": descricao
    };
    var res = http.post(url, body: data);
  }
}
