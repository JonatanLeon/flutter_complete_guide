import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int puntuacionFinal;
  final VoidCallback reiniciarCuestionario;

  Resultado(this.puntuacionFinal, this.reiniciarCuestionario);

  String get fraseResultado {
    String textoResultado = "Lo conseguiste";
    if (puntuacionFinal <= 8) {
      textoResultado = "Puntuación mínima";
    } else if (puntuacionFinal <= 12) {
      textoResultado = "Por debajo de la media";
    } else if (puntuacionFinal <= 16) {
      textoResultado = "Sobre la media";
    } else {
      textoResultado = "Buena puntuación";
    }
    return textoResultado;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            fraseResultado + "\n" + puntuacionFinal.toString(),
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
              onPressed: reiniciarCuestionario,
              child: Text("Reiniciar cuestionario")),
        ],
      ),
    );
  }
}
