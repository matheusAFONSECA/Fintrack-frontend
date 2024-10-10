// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          TextField(
            controller: _nameController,
            decoration: InputDecoration(hintText: 'Coloque seu nome aqui'),
          ),
          TextField(
            controller: _emailController,
            decoration: InputDecoration(hintText: 'Coloque seu e-mail aqui'),
          ),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(hintText: 'Coloque sua senha aqui'),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Cadastrar')),
          Text('Já possui login?'),
          ElevatedButton(onPressed: () {}, child: Text('Fazer login'))
        ],
      ),
    );
  }
}
