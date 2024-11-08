import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class PieChartScreen extends StatefulWidget {
  const PieChartScreen({super.key});

  @override
  State<PieChartScreen> createState() => _PieChartScreenState();
}

class _PieChartScreenState extends State<PieChartScreen> {
  Map<String, double> dataMap = {
    "Comida": 50,
    "Lazer": 20,
    "Contas": 100,
    "Roupas": 30,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Os seus gastos estão listados abaixo:'),
          PieChart(dataMap: dataMap),
          Container(
              decoration: const BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Adicionar novo gasto',
                    style: TextStyle(color: Colors.white),
                  )))
        ],
      ),
    );
  }
}
