import 'package:flutter/material.dart';

class DrawerContratos extends StatelessWidget {
  const DrawerContratos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 202, 21, 8),
        title: Text(
          'Contratos',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 34, 34, 34),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                Image.asset('assets/images/Zero.jpg', width: 200, height: 200),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                      'Objetivo: Zero \n Estado: Completado \n Monto de dinero: 86.000 \n Tipo de contrato: Cerrado \n Categoría: C\n',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
          Divider(color: Color.fromARGB(255, 202, 21, 8)),
          Container(
            child: Row(
              children: [
                Image.asset('assets/images/Cassian.jpg',
                    width: 200, height: 200),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    ' Objetivo: Cassian \n Estado: Pendiente\n Monto de dinero: 450.000 \n Tipo de contrato: Abierto \n Categoría: A \n',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Color.fromARGB(255, 202, 21, 8)),
          Container(
            child: Row(
              children: [
                Image.asset('assets/images/Ares.webp', width: 200, height: 200),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                      'Objetivo: Ares \n Estado: Pendiente \n Monto de dinero: 120.000 \n Tipo de contrato: Abierto \n Categoría: B \n',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
