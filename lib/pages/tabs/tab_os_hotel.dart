import 'package:flutter/material.dart';

class TabOsHotel extends StatelessWidget {
  const TabOsHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 199, 197, 197),
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
                            AssetImage('assets/images/Osaka_Continental.webp'),
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
                    child: Text('Ubicación: Centro de Osaka, Japón'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                        'Medidas de seguridad: Seguridad avanzada, personal altamente capacitado.'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                        'Servicios exclusivos:Instalaciones de entrenamiento de clase mundial, armería especializada, espacios para reuniones discretas.'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                        'Reseñas y clasificaciones:"¡Increíble! Excelente atención al detalle." - K.S.'),
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
