import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                onPressed: () {},
                child: Text(
                  "Calcular",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                color: Colors.amber,
              ),
            ),
          ),
          Text(
            "Verifique seu IMC",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black87, fontSize: 20),
          )
        ],
      ),
    );
  }
}
