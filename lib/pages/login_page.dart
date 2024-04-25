import 'package:asesinos_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 147, 153, 155),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 90.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('assets/images/Killer.webp'),
              ),
              Text(
                'Iniciar Sesión',
                style: TextStyle(fontSize: 40.0),
              ),
              SizedBox(
                width: 160.0,
                height: 15.0,
                child: Divider(color: Color.fromARGB(255, 84, 110, 122)),
              ),
              TextField(
                enableInteractiveSelection: false,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    labelText: 'Usuario',
                    suffixIcon: Icon(MdiIcons.glasses),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              Divider(
                height: 18.0,
              ),
              Divider(
                height: 15.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Contraseña',
                    suffixIcon: Icon(MdiIcons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              Divider(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlue),
                    child: Text(
                      'Iniciar Sesión',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                      ),
                    ),
                    onPressed: () {
                      MaterialPageRoute rutaHome =
                          MaterialPageRoute(builder: (context) {
                        return HomePage();
                      });
                      Navigator.push(context, rutaHome);
                    }),
              )
            ],
          )
        ],
      ),
    );
  }
}
