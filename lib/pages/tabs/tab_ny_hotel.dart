import 'package:flutter/material.dart';

class TabNyHotel extends StatelessWidget {
  const TabNyHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 60, 58, 58),
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
                        image: AssetImage('assets/images/NYC_Continental.webp'),
                        fit: BoxFit.fill),
                    border: Border.all(color: Color(0xFF1A237E), width: 4)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Ubicación: Manhattan, Nueva York',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Medidas de seguridad: Sistema de seguridad avanzado, personal altamente capacitado.',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Servicios exclusivos: Salas de entrenamiento, armerías especializadas, áreas de reunión privadas.',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Reseñas y clasificaciones: "Elegante y discreto. Perfecto para el trabajo." - J.W.',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1A237E)),
                onPressed: () {},
                child: Text(
                  'Reservar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
