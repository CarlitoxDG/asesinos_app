import 'package:asesinos_app/pages/servicios/doctor_page.dart';
import 'package:asesinos_app/pages/servicios/limpiadores_page.dart';
import 'package:asesinos_app/pages/servicios/sastre_page.dart';
import 'package:asesinos_app/pages/servicios/sommelier_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DrawerServicios extends StatelessWidget {
  const DrawerServicios({super.key});

  void cambiarPagina(BuildContext context, Widget page) {
    MaterialPageRoute route = MaterialPageRoute(builder: (context) => page);
    Navigator.push(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Servicios',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 202, 21, 8),
      ),
      //Lista de Servicios.
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: [
            ListTile(
                title: Text('Sommelier'),
                subtitle: Text('Armas y Munición'),
                leading:
                    Icon(MdiIcons.ammunition, color: Colors.orange, size: 40),
                onTap: () {
                  cambiarPagina(context, SommelierPage());
                }),
            Divider(),
            ListTile(
                title: Text('Doctor'),
                subtitle: Text('Servicio Médico de Urgencias'),
                leading: Icon(MdiIcons.medication, color: Colors.red, size: 40),
                onTap: () {
                  cambiarPagina(context, DoctorPage());
                }),
            Divider(),
            ListTile(
                title: Text('Sastre'),
                subtitle: Text('proporciona trajes con resistencia a balas'),
                leading: Icon(MdiIcons.tshirtCrew,
                    color: const Color.fromARGB(255, 185, 185, 6), size: 40),
                onTap: () {
                  cambiarPagina(context, SastrePage());
                }),
            Divider(),
            ListTile(
                title: Text('Limpiadores'),
                subtitle: Text(
                    'encargados del aseo de lugares en que hubo asesinatos y de “gestionar” los cadáveres'),
                leading: Icon(MdiIcons.broom, color: Colors.brown, size: 40),
                onTap: () {
                  cambiarPagina(context, LimpiadoresPage());
                }),
            Divider(),
          ],
        ),
      ),
    );
  }
}
