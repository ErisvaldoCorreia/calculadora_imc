import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  String _infoText = "Informe seus Dados!";

  void resetFields() {
    pesoController.text = "";
    alturaController.text = "";
    setState(() {
      _infoText = "Informe seus Dados!";
    });
  }

  void calcula() {
    setState(() {
      double peso = double.parse(pesoController.text);
      double altura = double.parse(alturaController.text) / 100;
      double imc = peso / (altura * altura);

      if (imc <= 18.6) {
        _infoText = "Abaixo do Peso - (${imc})";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Calculadora IMC",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.refresh,
                size: 25,
                color: Colors.black,
              ),
              onPressed: resetFields,
            )
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Icon(
                  Icons.person,
                  size: 120,
                  color: Colors.black54,
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Peso em KG",
                    labelStyle: TextStyle(color: Colors.black54, fontSize: 18)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 22),
                controller: pesoController,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Altura em CM",
                    labelStyle: TextStyle(color: Colors.black54, fontSize: 18)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 22),
                controller: alturaController,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                child: Container(
                  height: 50,
                  child: RaisedButton(
                    onPressed: calcula,
                    child: Text(
                      "Calcular",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                    color: Colors.amber,
                  ),
                ),
              ),
              Text(
                _infoText,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black87, fontSize: 20),
              )
            ],
          ),
        ));
  }
}
