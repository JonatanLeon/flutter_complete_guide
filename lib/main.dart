import 'package:flutter/material.dart';
import './resultado.dart';
import './cuestionario.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var posicionPregunta = 0;
  var puntuacionTotal = 0;

  final _preguntas = const [
    {
      "textoPregunta": "¿Cuál es tu color favorito?",
      "respuestas": [
        {"texto": "Negro", "puntuacion": 1},
        {"texto": "Rojo", "puntuacion": 3},
        {"texto": "Verde", "puntuacion": 5},
        {"texto": "Blanco", "puntuacion": 10}
      ]
    },
    {
      "textoPregunta": "¿Cuál es tu animal favorito?",
      "respuestas": [
        {"texto": "Gato", "puntuacion": 1},
        {"texto": "Perro", "puntuacion": 3},
        {"texto": "Conejo", "puntuacion": 5},
        {"texto": "Serpiente", "puntuacion": 10}
      ]
    },
    {
      "textoPregunta": "¿Qué curso estudias?",
      "respuestas": [
        {"texto": "SMR 1", "puntuacion": 1},
        {"texto": "SMR 2", "puntuacion": 3},
        {"texto": "DAM 1", "puntuacion": 5},
        {"texto": "DAM 2", "puntuacion": 10}
      ]
    },
  ];

  void reiniciarCuestionario() {
    setState(() {
      posicionPregunta = 0;
      puntuacionTotal = 0;
    });
  }

  void responderPregunta(int puntuacion) {
    puntuacionTotal += puntuacion;
    setState(() {
      posicionPregunta = posicionPregunta + 1;
    });
    print(posicionPregunta);
    if (posicionPregunta < _preguntas.length) {
      print("Hay más preguntas");
    } else {
      print("Ya no hay más preguntas");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: posicionPregunta < _preguntas.length
            ? Cuestionario(
                responderPregunta: responderPregunta,
                posicionPregunta: posicionPregunta,
                preguntas: _preguntas,
              )
            : Resultado(puntuacionTotal, reiniciarCuestionario),
      ),
    );
    throw UnimplementedError();
  }
}
