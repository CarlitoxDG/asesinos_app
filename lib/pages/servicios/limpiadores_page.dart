import 'package:flutter/material.dart';

class LimpiadoresPage extends StatelessWidget {
  const LimpiadoresPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 245, 220),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Limpiadores',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Limpiadores.webp'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.lightBlue, width: 4)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Nombre del Equipo: Equipo de Limpieza Blackwell',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Nacionalidad: Internacional',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Horarios de Atención: Todos los días: 24 horas',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Descripción: El Equipo de Limpieza Blackwell es un grupo de especialistas altamente capacitados en la limpieza y eliminación de evidencias. Con años de experiencia en el campo, este equipo de élite pertenece a la prestigiosa empresa Blackwell Cleaners, conocida por su discreción y eficiencia. Disponibles las 24 horas del día, los 7 días de la semana, los miembros del equipo se especializan en la limpieza de escenas del crimen y la eliminación de cualquier rastro de actividad criminal. Su enfoque meticuloso y su capacidad para trabajar en equipo garantizan resultados impecables en cualquier situación. Con el Equipo de Limpieza Blackwell, puede estar seguro de que su propiedad quedará completamente limpia y segura.',
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('LLamar'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
