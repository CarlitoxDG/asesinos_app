import 'package:flutter/material.dart';

class TabRomaHotel extends StatelessWidget {
  const TabRomaHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD7CCC8),
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 250,
                width: 320,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('assets/images/Roma_Continental.webp'),
                        fit: BoxFit.fill),
                    border: Border.all(color: Colors.yellow, width: 4)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text('Ubicación: Corazón de Roma, Italia'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                        'Medidas de seguridad: Entorno seguro, sistemas sofisticados.'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                        'Servicios exclusivos: Instalaciones de entrenamiento de élite, armería especializada, áreas de reunión privadas con vistas panorámicas.'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                        'Reseñas y clasificaciones: "La belleza de Roma, con la discreción que necesitamos." - G.P.'),
                  ),
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
