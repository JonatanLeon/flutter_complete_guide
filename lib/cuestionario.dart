import 'package:flutter/material.dart';
import './pregunta.dart';
import './respuesta.dart';

class Cuestionario extends StatelessWidget {
  final List<Map<String, Object>> preguntas;
  final int posicionPregunta;
  final Function responderPregunta;

  Cuestionario(
      {@required this.preguntas,
      @required this.responderPregunta,
      @required this.posicionPregunta});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Pregunta(
          preguntas[posicionPregunta]["textoPregunta"],
        ),
        ...(preguntas[posicionPregunta]["respuestas"]
                as List<Map<String, Object>>)
            .map((respuesta) {
          return Respuesta(() {
            responderPregunta(respuesta["puntuacion"]);
          }, respuesta["texto"]);
        }).toList()
      ],
    );
  }
}
