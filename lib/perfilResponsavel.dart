import 'package:flutter/material.dart';


class PerfilResponsavelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top:20, left: 40, right: 40),
        child: ListView(
          children: <Widget>[
           //**************************************** Title FINDKID ************************
            Container(
              padding: EdgeInsets.only(
                  top: 10, left: 80, right: 10, bottom: 20
                ),
                child: Text(
                  "Meu Perfil",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    
                  ),
                ),
              ),
               //**************************************** TextFormField ************************
              Container(height: 40,),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                 padding: EdgeInsets.only(
                  top: 5, bottom: 5
                ),
                child: TextFormField(
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
                    hintText: 'Bairro',
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
                    //Navigator.pushReplacementNamed(context, '/home')
                  },
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10)),
                  child: Text(
                    "Atualizar cadastro",
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
                    //Navigator.pushReplacementNamed(context, '/home')
                  },
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10)),
                  child: Text(
                    "Excluir conta",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  color:Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonTheme(
                height: 40,
                child: RaisedButton(
                  onPressed: () => {
                    Navigator.pushReplacementNamed(context, '/home')
                  },
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10)),
                  child: Text(
                    "Voltar",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  color:Colors.black,
                ),
              ),
          ],
          
        )
      )
    );
  }
}