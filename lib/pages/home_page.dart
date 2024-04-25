import 'package:asesinos_app/pages/drawer/drawer_contratos.dart';
import 'package:asesinos_app/pages/drawer/drawer_hoteles.dart';
import 'package:asesinos_app/pages/drawer/drawer_servicios.dart';
import 'package:asesinos_app/pages/perfiles/ares_perfil.dart';
import 'package:asesinos_app/pages/perfiles/cassian_perfil.dart';
import 'package:asesinos_app/pages/perfiles/zero_perfil.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String usuario;
  HomePage(this.usuario, {Key? key}) : super(key: key);

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
    Widget perfil;
    if (widget.usuario == 'Ares') {
      perfil = AresPerfil();
    } else if (widget.usuario == 'Zero') {
      perfil = ZeroPerfil();
    } else if (widget.usuario == 'Cassian') {
      perfil = CassianPerfil();
    } else {
      perfil = Center(
        child: Text(
          'Usuario Desconocido, intentalo de nuevo.',
          style: TextStyle(color: Colors.redAccent, fontSize: 40),
        ),
      );
    }

    return Scaffold(
      body: perfil,
    );
  }
}
