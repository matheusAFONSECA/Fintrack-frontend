import 'package:flutter/material.dart';
import 'package:Fintrack/View/login_screen.dart';
import 'package:Fintrack/View/pie_chart.dart';
import 'package:Fintrack/View/register_screen.dart';

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
        '/login': (context) => LoginScreen(),
        '/pieChart': (context) => const PieChartScreen()
      },
      initialRoute: '/',
    );
  }
}
