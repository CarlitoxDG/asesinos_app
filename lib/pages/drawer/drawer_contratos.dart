import 'package:asesinos_app/widgets/contratos.dart';
import 'package:flutter/material.dart';

class DrawerContratos extends StatelessWidget {
  const DrawerContratos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 202, 21, 8),
        title: Text(
          'Contratos',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 34, 34, 34),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: [
            Contratos(
              imagen: 'copano.jpg',
              objetivo: 'Fabricio Copano',
              descripcion:
                  'Eliminar al reconocido comediante chileno que ha estado filtrando información confidencial sobre la organización.',
              recompensa: '100.000',
              dificultad: 'Alta',
              ubicacion: 'Teatro Nacional, Santiago, Chile',
            ),
            Divider(
              color: Colors.redAccent,
            ),
            Contratos(
              imagen: 'Boric.jpg',
              objetivo: 'Gabriel Boric',
              descripcion:
                  'Secuestrar al político chileno para enviar un mensaje a sus aliados.',
              recompensa: '1.500.000',
              dificultad: 'Media',
              ubicacion: 'Congreso Nacional, Valparaíso, Chile',
            ),
            Divider(
              color: Colors.redAccent,
            ),
            Contratos(
              imagen: 'Adam_Sandler.jpg',
              objetivo: 'Adam Sandler',
              descripcion:
                  'Eliminar al actor y productor estadounidense que ha estado difamando a la organización en sus películas.',
              recompensa: '200.000',
              dificultad: 'Alta',
              ubicacion: 'Mansión Sandler, Los Ángeles, Estados Unidos',
            ),
          ],
        ),
      ),
    );
  }
}
