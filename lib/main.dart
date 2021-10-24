import 'package:calculator/widgets/calcAction.dart';
import 'package:flutter/material.dart';
//import 'package:calculator/widgets/calcButton.dart';

void main() {
  runApp(const CalcApp());
}

class CalcApp extends StatelessWidget {
  const CalcApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const Icon(
            Icons.calculate,
            size: 40,
          ),
          title: const Text(
            'CALCULATOR',
            style: TextStyle(fontSize: 30, color: Colors.cyanAccent),
          ),
          backgroundColor: Colors.black12,
        ),
        backgroundColor: const Color(0xFF283637),
        body: const CalcAction(),
      ),
    );
  }
}
