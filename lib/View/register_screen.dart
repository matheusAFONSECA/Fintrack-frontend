import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Icon(
            Icons.monetization_on,
            size: MediaQuery.of(context).size.height * 0.5,
          ),
          Text(
            'XicoCoin',
            style: TextStyle(fontSize: 20),
          ),
          Text('Olá, crie sua conta preenchendo os campos abaixo:'),
          TextField(),
          TextField()
        ],
      ),
    );
  }
}
