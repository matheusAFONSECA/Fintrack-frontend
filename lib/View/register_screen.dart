// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 216, 216, 216)
              ], // Defina as cores do gradiente
              begin: Alignment.topLeft, // Ponto de início do gradiente
              end: Alignment.bottomRight, // Ponto de fim do gradiente
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.monetization_on_rounded,
                color: Color.fromARGB(255, 240, 171, 51),
                size: MediaQuery.of(context).size.height * 0.3,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 48, 100, 50),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'XicoCoin',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Olá, crie sua conta preenchendo os campos abaixo:',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            hintText: 'Coloque seu nome aqui',
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(15.0)), // Borda arredondada
                              borderSide: BorderSide(
                                color: Colors.white, // Cor branca
                                width: 1.0,
                              ),
                            ),
                          ),
                          style: TextStyle(color: Colors.white), // Cor do texto
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            hintText: 'Coloque seu e-mail aqui',
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(15.0)), // Borda arredondada
                              borderSide: BorderSide(
                                color: Colors.white, // Cor branca
                                width: 1.0,
                              ),
                            ),
                          ),
                          style: TextStyle(color: Colors.white), // Cor do texto
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            hintText: 'Coloque sua senha aqui',
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(15.0)), // Borda arredondada
                              borderSide: BorderSide(
                                color: Colors.white, // Cor branca
                                width: 1.0,
                              ),
                            ),
                          ),
                          style: TextStyle(color: Colors.white), // Cor do texto
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 240, 171, 51),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Cadastrar',
                                  style: TextStyle(color: Colors.white),
                                ))),
                      )
                    ],
                  ),
                ),
              ),
              Text(
                'Já possui login?',
                style: TextStyle(color: Color.fromARGB(255, 48, 100, 50)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 240, 171, 51),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Entrar',
                          style: TextStyle(color: Colors.white),
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
