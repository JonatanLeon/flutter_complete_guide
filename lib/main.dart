import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var posicionPregunta = 0;

  void responderPregunta1() {
    setState(() {
      posicionPregunta = 0;
    });
    print(posicionPregunta);
  }

  void responderPregunta2() {
    setState(() {
      posicionPregunta = 1;
    });
    print(posicionPregunta);
  }

  @override
  Widget build(BuildContext context) {
    var preguntas = [
      "¿Cuál es tu color favorito?",
      "¿Cuál es tu animal favorito?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: <Widget>[
            Text(
              preguntas[posicionPregunta],
            ),
            RaisedButton(
              child: Text("Respuesta 1"),
              // El paréntesis solo es una función anónima
              onPressed: responderPregunta1,
            ),
            RaisedButton(
              child: Text("Respuesta 2"),
              onPressed: responderPregunta1,
            ),
            RaisedButton(
              child: Text("Respuesta 3"),
              onPressed: responderPregunta2,
            ),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}
