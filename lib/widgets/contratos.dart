import 'package:flutter/material.dart';

class Contratos extends StatelessWidget {
  final String imagen;
  final String objetivo;
  final String descripcion;
  final String recompensa;
  final String dificultad;
  final String ubicacion;

  Contratos({
    required this.imagen,
    required this.objetivo,
    required this.descripcion,
    required this.recompensa,
    required this.dificultad,
    required this.ubicacion,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 34, 34, 34),
      child: ListTile(
        title: Image.asset('assets/images/${this.imagen}', fit: BoxFit.contain),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Objetivo: $objetivo',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Descripción: $descripcion',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Recompensa: $recompensa',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Dificultad: $dificultad',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Ubicación: $ubicacion',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
