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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculador IMC.'),
        centerTitle: true,
        backgroundColor: Colors.green,
        iconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[IconButton(
          icon: Icon(Icons.refresh), 
          onPressed: (){}
        )],
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(Icons.person_outline, size: 120.0, color: Colors.green),
            TextField(
              keyboardType: TextInputType.number, 
              decoration: InputDecoration(labelText: 'Peso kg', labelStyle: TextStyle(color: Colors.green)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green),
            ),
            TextField(
              keyboardType: TextInputType.number, 
              decoration: InputDecoration(labelText: 'Altura cm', labelStyle: TextStyle(color: Colors.green)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {}, 
                  child: Text('Calcular', style: TextStyle(color: Colors.white, fontSize: 20.0)), 
                  color: Colors.green
                ),
              ),
            ),
            Text('Info: ', 
              textAlign: TextAlign.center, 
              style: TextStyle(color: Colors.green, fontSize: 20.0))
          ],
        ),
      )
    );
  }

 }