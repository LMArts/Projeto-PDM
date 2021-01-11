import 'package:flutter/material.dart';
import 'package:pdm/cadResponsavel.dart';
import 'package:pdm/cadCrianca.dart';
import 'package:pdm/home.dart';
import 'package:pdm/login.dart';
import 'package:pdm/perfilCrianca.dart';
import 'package:pdm/perfilResponsavel.dart';
import 'package:pdm/qrcode.dart';

import 'listarCrianca.dart';

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
        '/cadCrianca': (BuildContext context) => new CadCrianca(),
        '/perfilCrianca': (BuildContext context) => new PerfilCriancaPage(),
        '/perfilResponsavel': (BuildContext context) =>new PerfilResponsavelPage(),
        '/qrcode': (BuildContext context) => new QrCode(),
        '/home': (BuildContext context) => new Home(),
        '/listarCrianca': (BuildContext context) => new ListarCrianca(),
        '/cadResponsavel': (BuildContext context) => new CadResponsavel(),
        '/login': (BuildContext context) => new Login()
      },
    );
  }
}
