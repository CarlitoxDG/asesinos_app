import 'package:flutter/material.dart';

class SommelierPage extends StatelessWidget {
  const SommelierPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 139, 34),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sommelier',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(227, 216, 199, 41),
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
                    border: Border.all(color: Colors.yellow, width: 4)),
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
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Text(
                      'Nacionalidad: Britanico',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Text(
                      'Especialidad: Vinos de la región del valle del Ródano',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Text(
                      'Horarios de Atención: Miércoles a Sábado: 18:00 PM - 23:00 PM',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: Text(
                      'Descripción: James Bennett es un sommelier británico con una pasión incomparable por los vinos y la cultura gastronómica. Con una formación excepcional en las mejores bodegas de Europa, James ofrece su experiencia en The Royal Vineyard, un restaurante de renombre internacional. Su especialidad radica en los vinos de la región del valle del Ródano, donde ha desarrollado un conocimiento profundo y una apreciación por las variedades únicas y los terroirs distintivos de la zona. James combina su conocimiento experto con un toque británico distintivo para ofrecer a los comensales una experiencia enológica única. Su enfoque dedicado y su atención meticulosa a los detalles garantizan una experiencia gastronómica inolvidable en cada visita al restaurante.',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            /* Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('LLamar'),
              ),
            ) */
          ],
        ),
      ),
    );
  }
}
