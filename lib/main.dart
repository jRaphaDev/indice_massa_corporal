import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Home()
  )
);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
 
class _HomeState extends State<Home> {

  String _informacao = "Informe seus dados !";

  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  void _cleanFileds(){
    pesoController.text = "";
    alturaController.text = "";

    setState(() {
      _informacao = "Informe seus dados !";
    });
  }

  void _calculaIMC(){

    setState(() {
      double peso = double.parse(pesoController.text);
      double altura = double.parse(alturaController.text) / 100;

      double imc = peso / (altura * altura);

      print(imc);
      if (imc < 18.6) {
        _informacao = "seu IMC é : ${imc.toStringAsPrecision(4)}, voce está abaixo do peso ";

      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createAppBar(),

      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(Icons.person_outline, size: 120.0, color: Colors.green),
            TextField(
              keyboardType: TextInputType.number, 
              decoration: InputDecoration(labelText: 'Peso (kg)', labelStyle: TextStyle(color: Colors.green)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green),
              controller: pesoController,
            ),
            TextField(
              keyboardType: TextInputType.number, 
              decoration: InputDecoration(labelText: 'Altura (cm)', labelStyle: TextStyle(color: Colors.green)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green),
              controller: alturaController  ,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: _calculaIMC,
                  child: Text('Calcular', style: TextStyle(color: Colors.white, fontSize: 20.0)), 
                  color: Colors.green
                ),
              ),
            ),
            Text(_informacao, 
              textAlign: TextAlign.center, 
              style: TextStyle(color: Colors.green, fontSize: 20.0)
            )
          ],
        ),
      )
    );
  }

  createAppBar(){
    return AppBar(
        title: Text('Calculador IMC.'),
        centerTitle: true,
        backgroundColor: Colors.green,
        iconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[IconButton(
          icon: Icon(Icons.refresh), 
          onPressed: _cleanFileds
        )],
      );
  }

 }