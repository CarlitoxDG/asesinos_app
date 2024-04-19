import 'package:asesinos_app/pages/tabs/tab_contratos.dart';
import 'package:asesinos_app/pages/tabs/tab_hoteles.dart';
import 'package:asesinos_app/pages/tabs/tab_servicios.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indice = 0;
  List<Widget> paginas = [TabContratos(), TabHoteles(), TabServicios()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Bienvenido',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text('Home'),
      ),
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
                    padding: const EdgeInsets.all(1),
                    child: Text(
                      'John Wick',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Contratos'),
              leading: Icon(MdiIcons.paperclip),
              onTap: () {
                print('Navegar a la otra página');
                //crear ruta para navegar a la página
                MaterialPageRoute rutaTabs =
                    MaterialPageRoute(builder: (context) {
                  return TabContratos();
                });
                //ejecutar la ruta
                Navigator.push(context, rutaTabs);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Hoteles'),
              leading: Icon(MdiIcons.home),
              onTap: () {
                print('Navegar a la otra página');
                //crear ruta para navegar a la página
                MaterialPageRoute rutaTabs =
                    MaterialPageRoute(builder: (context) {
                  return TabHoteles();
                });
                //ejecutar la ruta
                Navigator.push(context, rutaTabs);
              },
            ),
            Divider(),
            ListTile(
              title: Text('Servicios'),
              leading: Icon(MdiIcons.cellphone),
              onTap: () {
                print('Navegar a la otra página');
                //crear ruta para navegar a la página
                MaterialPageRoute rutaTabs =
                    MaterialPageRoute(builder: (context) {
                  return TabServicios();
                });
                //ejecutar la ruta
                Navigator.push(context, rutaTabs);
              },
            ),
          ],
        ),
      ),
    );
  }
}
