import 'package:flutter/material.dart';

class Pregunta extends StatelessWidget {
  var textoPregunta;

  Pregunta(this.textoPregunta);

  @override
  Widget build(BuildContext context) {
    return Text(textoPregunta);
  }
}
