import 'package:flutter/material.dart';

class Respuesta extends StatelessWidget {
  final VoidCallback seleccionador;
  final String textoRespuesta;

  Respuesta(this.seleccionador, this.textoRespuesta);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.green),
          foregroundColor: MaterialStateProperty.all(Colors.white)
        ),
        child: Text(textoRespuesta),
        // El paréntesis solo es una función anónima
        onPressed: seleccionador,
      ),
    );
  }
}
