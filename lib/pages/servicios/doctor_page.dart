import 'package:flutter/material.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 245, 220),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Doctor',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.blue,
      ),
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
                        image: AssetImage('assets/images/Doctor.webp'),
                        fit: BoxFit.cover),
                    border: Border.all(color: Colors.blue, width: 4)),
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
                      'Nombre: Alexander Greene',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Nacionalidad: Americano',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Especialidad: Medicina de Emergencia y Traumatología',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Horario de Atención: Lunes a Viernes: 9:00 AM - 18:00 PM',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Descripción: El Dr. Alexander Greene es un médico altamente cualificado especializado en medicina de emergencia y traumatología. Con una vasta experiencia en el tratamiento de heridas de combate y situaciones de alta presión, el Dr. Greene es conocido por su habilidad para estabilizar a pacientes en condiciones críticas. Afiliado al prestigioso Hospital Metropolitano de la Ciudad, el Dr. Greene ofrece servicios médicos de primera calidad para aquellos que requieren atención médica urgente.',
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
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
