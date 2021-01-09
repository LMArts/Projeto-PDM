import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo App1"),
        ),
        
        body: Column(
          
          children: <Widget>[
            Container(
              
              height: 40.0,
              child: Row(
                children: <Widget>[
                  Container(
                      // padding: EdgeInsets.all(10.0),
                      width: 390,
                       alignment: Alignment.topCenter,
                      child: Text(
                        "Bem Vindo(a)!",
                         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)
                      )),
                 
                ],
              ),
            ),
            Expanded(
              
              child: GridView.count(
                
                crossAxisCount: 2,
                
                children:<Widget> [
                  
                Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(17),
                       padding: EdgeInsets.all(9.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                      ),
                      child:Column(
                        
                        children:[
                          
                          Image.asset('assets/images/crianca.png',
                          height: 120,
                          width: 120),
                          Text(
                              'Crianças',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)
                          ),  
                        ],
                      ),
                    ),
            Container(
              
               width: 100,
                      height: 100,
                     margin: EdgeInsets.all(17),
                        padding: EdgeInsets.all(9.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                      ),
              child:Column(
                children:[
                  Image.asset('assets/images/user.png',
                  height: 120,
                  width: 120,),
                  Text(
                      'Meu perfil',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)
                  ),
                ],
              ),
            ),
            Container(
               width: 100,
                      height: 100,
                      margin: EdgeInsets.all(17),
                         padding: EdgeInsets.all(9.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                      ),
              child:Column(
                children:[
                  Image.asset('assets/images/qr-code-menu.png',
                  height: 120,
                  width: 120),
                  Text(
                      'QR code',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)
                  ),
                ],
              ),
            ),
            Container(
               width: 100,
                      height: 100,
                     margin: EdgeInsets.all(17),
                        padding: EdgeInsets.all(9.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                      ),
              child:Column(
                children:[
                  Image.asset('assets/images/close.png',
        height: 120,
                  width: 120),
                  Text(
                      'Sair',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)
                  ),
                ],
              ),
            ),
      ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
