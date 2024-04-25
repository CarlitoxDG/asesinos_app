import 'package:asesinos_app/pages/tabs/tab_cblanca_hotel.dart';
import 'package:asesinos_app/pages/tabs/tab_ny_hotel.dart';
import 'package:asesinos_app/pages/tabs/tab_os_hotel.dart';
import 'package:asesinos_app/pages/tabs/tab_roma_hotel.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DrawerHoteles extends StatefulWidget {
  const DrawerHoteles({Key? key}) : super(key: key);

  @override
  State<DrawerHoteles> createState() => _DrawerHotelesState();
}

class _DrawerHotelesState extends State<DrawerHoteles> {
  int index = 0;

  List<Widget> paginas = [
    TabCblancaHotel(),
    TabNyHotel(),
    TabOsHotel(),
    TabRomaHotel(),
  ];

  static List<String> appbarTitulos = [
    'Casa Blanca',
    'Nueva York',
    'Osaka',
    'Roma',
  ];

  static List<Color> appbarColor = [
    Color(0xFF424242),
    Color(0xFF1A237E),
    Color(0xFFD32F2F),
    Color(0xFFFFAB00),
  ];

  static List<Color> appbarColorText = [
    Colors.white,
    Colors.white,
    Colors.black,
    Colors.black,
  ];

  void cambiarPagina(int i) {
    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: appbarColorText[index],
        centerTitle: true,
        title: Text(
          appbarTitulos[index],
          style: TextStyle(color: appbarColorText[index]),
        ),
        backgroundColor: appbarColor[index],
      ),
      body: paginas[index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Casa Blanca',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.homeCityOutline),
            label: 'Nueva York',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.homeModern),
            label: 'Osaka',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stadium),
            label: 'Roma',
          ),
        ],
        currentIndex: index,
        selectedItemColor: appbarColorText[index],
        unselectedItemColor: appbarColorText[index],
        backgroundColor: appbarColor[index],
        onTap: cambiarPagina,
      ),
    );
  }
}
