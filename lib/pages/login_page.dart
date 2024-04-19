import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 211, 199, 199),
      body: Center(
        child: ListView(
          children: [
            TextField(
              enableInteractiveSelection: false,
              decoration: InputDecoration(
                hintText: 'Jhon Week',
                labelText: 'Usuario',
              ),
            )
          ],
        ),
      ),
    );
  }
}
