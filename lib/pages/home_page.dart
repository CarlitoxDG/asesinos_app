import 'package:asesinos_app/pages/drawer/drawer_contratos.dart';
import 'package:asesinos_app/pages/drawer/drawer_hoteles.dart';
import 'package:asesinos_app/pages/drawer/drawer_servicios.dart';
import 'package:asesinos_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indice = 0;
  List<Widget> paginas = [
    DrawerContratos(),
    DrawerHoteles(),
    DrawerServicios()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Bienvenido',
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
                    image: AssetImage('assets/images/JohnWick.jpg'),
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
                  Text(
                    'Nombre: John Wick',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Nacionalidad: Americano',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Ciudad: Nueva York',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Edad: 30',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Asesinatos: 40',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //Navegación
      drawer: Drawer(
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
                          image: AssetImage('assets/images/JohnWick.jpg'),
                          fit: BoxFit.fill,
                        ),
                        border: Border.all(width: 2.0, color: Colors.black)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Text(
                      'John Wick',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            //Navegacion a las otras Páginas.
            ListTile(
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
