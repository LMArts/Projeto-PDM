import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
          children: <Widget>[
            Container(height: 40,),
            Container(
              height: 40.0,
              child: Row(
                children: <Widget>[
                  Container(
                      width: 340,
                      alignment: Alignment.topCenter,
                      child: Text("Bem Vindo(a)!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30))),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, '/listarCrianca');
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/images/crianca.png',
                                height: 120, width: 120),
                            Text('Crianças',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                          ],
                        )),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, '/perfilResponsavel');
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/images/user.png',
                                height: 120, width: 120),
                            Text('Meu perfil',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                          ],
                        )),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.all(7.0),
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, '/qrcode');
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/images/qr-code-menu.png',
                                height: 120, width: 120),
                            Text('QR Code',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                          ],
                        )),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.all(7.0),
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[300],
                    ),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, '/login');
                        },
                        child: Column(
                          children: [
                            Image.asset('assets/images/close.png',
                                height: 120, width: 120),
                            Text('Sair',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
            ),
          ),
        ),
      );
  }
}
