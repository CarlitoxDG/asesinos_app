import 'package:flutter/material.dart';

class SastrePage extends StatelessWidget {
  const SastrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 34, 34),
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Sastre',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 320,
                width: 220,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Sastre.webp'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                      color: const Color.fromARGB(255, 82, 45, 32), width: 4),
                ),
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
                      'Nombre: Giuseppe Marchesi',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Nacionalidad: Italiano',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Horarios de Atención: Martes a Sábado: 10:00 AM - 19:00 PM',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Descripción: Giuseppe Marchesi es un sastre de renombre internacional conocido por sus habilidades excepcionales en la confección de trajes a medida. En su tienda exclusiva, Marchesi Sastres de Élite, ofrece servicios de sastrería personalizados para clientes exigentes. Desde trajes elegantes hasta uniformes discretos, el Sr. Marchesi garantiza un ajuste perfecto y una calidad excepcional en cada prenda.',
                      style: TextStyle(color: Colors.white, fontSize: 15),
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
