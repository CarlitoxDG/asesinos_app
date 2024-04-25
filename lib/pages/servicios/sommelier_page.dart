import 'package:flutter/material.dart';

class SommelierPage extends StatelessWidget {
  const SommelierPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 224, 224),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sommelier',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color.fromARGB(255, 63, 81, 181),
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
                      image: AssetImage('assets/images/Sommelier.webp'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                        color: Color.fromARGB(255, 63, 81, 181), width: 4)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Text(
                      'Nombre: James Bennett',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Text(
                      'Nacionalidad: Britanico',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Text(
                      'Especialidad: Vinos de la región del valle del Ródano',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Text(
                      'Horarios de Atención: Miércoles a Sábado: 18:00 PM - 23:00 PM',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Text(
                      'Descripción: James Bennett, exmilitar británico, ofrece armas de fuego de precisión y municiones de alta calidad en la Armería Delacourt. Con su experiencia y atención personalizada, garantiza que cada cliente reciba el arma adecuada para sus necesidades.',
                      style: TextStyle(color: Colors.black, fontSize: 15),
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
