import 'package:calculadoraimc/home.dart';
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
            onPressed: () {},
          )
        ],
      ),
      body: HomePage(),
    );
  }
}
