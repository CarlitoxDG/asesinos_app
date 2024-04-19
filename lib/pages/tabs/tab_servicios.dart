import 'package:asesinos_app/pages/servicios/doctor_page.dart';
import 'package:asesinos_app/pages/servicios/limpiadores_page.dart';
import 'package:asesinos_app/pages/servicios/sastre_page.dart';
import 'package:asesinos_app/pages/servicios/sommelier_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TabServicios extends StatelessWidget {
  const TabServicios({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Servicios'),
        ),
        body: Padding(
            padding: EdgeInsets.all(8),
            child: ListView(children: [
              ListTile(
                title: Text('Sommelier'),
                subtitle: Text('Armas y Munición'),
                leading:
                    Icon(MdiIcons.ammunition, color: Colors.orange, size: 40),
                //trailing: Text('Stock: 5', style: TextStyle(fontSize: 16)),
                onTap: () {
                  print('Navegar a la otra página');
                  //crear ruta para navegar a la página
                  MaterialPageRoute rutaServicio =
                      MaterialPageRoute(builder: (context) {
                    return SommelierPage();
                  });
                  //ejecutar la ruta
                  Navigator.push(context, rutaServicio);
                },
              ),
              ListTile(
                title: Text('Doctor'),
                subtitle: Text('Servicio Médico de Urgencias'),
                leading: Icon(MdiIcons.medication, color: Colors.red, size: 40),
                //trailing: Text('Stock: 5', style: TextStyle(fontSize: 16)),
                onTap: () {
                  print('Navegar a la otra página');
                  //crear ruta para navegar a la página
                  MaterialPageRoute rutaServicio =
                      MaterialPageRoute(builder: (context) {
                    return DoctorPage();
                  });
                  //ejecutar la ruta
                  Navigator.push(context, rutaServicio);
                },
              ),
              ListTile(
                title: Text('Sastre'),
                subtitle: Text('proporciona trajes con resistencia a balas'),
                leading: Icon(MdiIcons.tshirtCrew,
                    color: Color.fromARGB(255, 10, 176, 209), size: 40),
                //trailing: Text('Stock: 5', style: TextStyle(fontSize: 16)),
                onTap: () {
                  print('Navegar a la otra página');
                  //crear ruta para navegar a la página
                  MaterialPageRoute rutaServicio =
                      MaterialPageRoute(builder: (context) {
                    return SastrePage();
                  });
                  //ejecutar la ruta
                  Navigator.push(context, rutaServicio);
                },
              ),
              ListTile(
                title: Text('Limpiadores'),
                subtitle: Text(
                    'encargados del aseo de lugares en que hubo asesinatos y de “gestionar” los cadáveres'),
                leading: Icon(MdiIcons.broom, color: Colors.brown, size: 40),
                //trailing: Text('Stock: 5', style: TextStyle(fontSize: 16)),
                onTap: () {
                  print('Navegar a la otra página');
                  //crear ruta para navegar a la página
                  MaterialPageRoute rutaServicio =
                      MaterialPageRoute(builder: (context) {
                    return LimpiadoresPage();
                  });
                  //ejecutar la ruta
                  Navigator.push(context, rutaServicio);
                },
              ),
            ])));
  }
}
