import 'package:flutter/material.dart';
import 'package:pdm/cadastroCrianca.dart';
import 'package:pdm/login.dart';
import 'package:pdm/perfilCrianca.dart';
import 'package:pdm/perfilResponsavel.dart';
import 'package:pdm/qrcode.dart';

import 'cadastroResponsavel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/login',
      routes: <String, WidgetBuilder>{
        '/cadCrianca': (BuildContext context) => new CadCriancaPage(),
        '/cadResponsavel': (BuildContext context) => new CadResponsavelPage(),
        '/perfilCrianca': (BuildContext context) => new PerfilCriancaPage(),
        '/perfilResponsavel': (BuildContext context) => new PerfilResponsavelPage(),
        '/qrcode': (BuildContext context) => new QrCode(),
        '/login': (BuildContext context) => new Login()
      },
    );
  }
}
