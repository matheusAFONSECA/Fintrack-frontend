import 'package:flutter/material.dart';
import 'package:projeto_c214/View/login_screen.dart';
import 'package:projeto_c214/View/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => RegisterPage(),
        '/login': (context) => LoginScreen()
      },
      initialRoute: '/',
    );
  }
}
