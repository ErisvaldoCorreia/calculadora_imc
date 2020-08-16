import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC", style: TextStyle(
          fontSize: 25, color: Colors.black, ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh, size: 25, color: Colors.black,),
            onPressed: (){},
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(Icons.person, size: 120, color: Colors.black54,),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Peso em KG",
                  labelStyle: TextStyle(color: Colors.black54, fontSize: 18)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Altura em CM",
                  labelStyle: TextStyle(color: Colors.black54, fontSize: 18)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Container(
                height: 50,
                child: RaisedButton(
                  onPressed: (){},
                  child: Text("Calcular", style: TextStyle(
                      color: Colors.black, fontSize: 25),
                  ),
                  color: Colors.amber,
                ),
              ),
            ),
            Text("Verifique seu IMC",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.amber, fontSize: 25),
            )
          ],
        ),
      )
    );
  }
}
