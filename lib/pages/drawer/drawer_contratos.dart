import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DrawerContratos extends StatelessWidget {
  const DrawerContratos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 136, 115, 21),
        title: Text(
          'Contratos',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: [
            ListTile(
              title: Text('Sommelier'),
              subtitle: Text('Armas y Munición'),
              leading:
                  Icon(MdiIcons.ammunition, color: Colors.orange, size: 40),
              onTap: () {},
            ),
            ListTile(
              title: Text('Doctor'),
              subtitle: Text('Servicio Médico de Urgencias'),
              leading: Icon(MdiIcons.medication, color: Colors.red, size: 40),
              onTap: () {},
            ),
            ListTile(
              title: Text('Sastre'),
              subtitle: Text('proporciona trajes con resistencia a balas'),
              leading: Icon(MdiIcons.tshirtCrew,
                  color: const Color.fromARGB(255, 185, 185, 6), size: 40),
              onTap: () {},
            ),
            ListTile(
              title: Text('Limpiadores'),
              subtitle: Text(
                  'encargados del aseo de lugares en que hubo asesinatos y de “gestionar” los cadáveres'),
              leading: Icon(MdiIcons.broom, color: Colors.brown, size: 40),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
