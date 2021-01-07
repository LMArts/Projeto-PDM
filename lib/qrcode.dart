import 'package:flutter/material.dart';

class QrCode extends StatefulWidget {
  @override
  _QrCodeState createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/images/qrcode.png'),
              ),
              Container(height: 5,),
              SizedBox(
                height: 5,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac diam vitae sem tincidunt consequat.',
                    style: TextStyle(color: Colors.black, fontSize: 17.0),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/perfilResponsavel');
                },
                child: Text('Compartilhar'),
                color: Colors.black,
                textColor: Colors.white,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5)),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
