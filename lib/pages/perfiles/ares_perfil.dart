import 'package:asesinos_app/pages/drawer/drawer_contratos.dart';
import 'package:asesinos_app/pages/drawer/drawer_hoteles.dart';
import 'package:asesinos_app/pages/drawer/drawer_servicios.dart';
import 'package:asesinos_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AresPerfil extends StatefulWidget {
  const AresPerfil({super.key});

  @override
  State<AresPerfil> createState() => _AresPerfilState();
}

class _AresPerfilState extends State<AresPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 34, 34),
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Bienvenida',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 202, 21, 8),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Ares.webp'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Nombre: Ares',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Nacionalidad: Desconocido',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Ciudad: Desconocido',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Edad: 32',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Asesinatos: 115',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Habilidades: \n - Experta en combate cuerpo a cuerpo. \n - Manejo de armas de fuego. \n - Experta en estrategias tácticas.\n',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //Navegación
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 34, 34, 34),
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/Ares.webp'),
                          fit: BoxFit.fill,
                        ),
                        border: Border.all(width: 2.0, color: Colors.red)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Text(
                      'Ares',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            //Navegacion a las otras Páginas.
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.red,
              title: Text('Contratos'),
              leading: Icon(MdiIcons.clipboard),
              onTap: () {
                MaterialPageRoute rutaTabs =
                    MaterialPageRoute(builder: (context) {
                  return DrawerContratos();
                });
                Navigator.pop(context);
                Navigator.push(context, rutaTabs);
              },
            ),
            Divider(),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.red,
              title: Text('Hoteles'),
              leading: Icon(MdiIcons.home),
              onTap: () {
                MaterialPageRoute rutaTabs =
                    MaterialPageRoute(builder: (context) {
                  return DrawerHoteles();
                });
                Navigator.pop(context);
                Navigator.push(context, rutaTabs);
              },
            ),
            Divider(),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.red,
              title: Text('Servicios'),
              leading: Icon(MdiIcons.cellphone),
              onTap: () {
                MaterialPageRoute rutaTabs =
                    MaterialPageRoute(builder: (context) {
                  return DrawerServicios();
                });
                Navigator.pop(context);
                Navigator.push(context, rutaTabs);
              },
            ),
            Divider(),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.red,
              title: Text('Salir'),
              leading: Icon(MdiIcons.exitToApp),
              onTap: () {
                MaterialPageRoute rutaTabs =
                    MaterialPageRoute(builder: (context) {
                  return LoginPage();
                });
                Navigator.pop(context);
                Navigator.push(context, rutaTabs);
              },
            ),
          ],
        ),
      ),
    );
  }
}
