import 'package:flutter/material.dart';
import 'package:calculator/widgets/calcButton.dart';

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
          ),
          title: const Text(
            'CALCULATOR',
            style: TextStyle(fontSize: 30, color: Colors.cyanAccent),
          ),
          backgroundColor: Colors.black12,
        ),
        backgroundColor: const Color(0xFF283637),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'hello',
                      style: TextStyle(color: Colors.white54, fontSize: 35),
                    ),
                  ),
                  alignment: const Alignment(1.0, 1.0),
                ),
                Container(
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'hello',
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  ),
                  alignment: const Alignment(1.0, 1.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CalacButton(
                      text: 'AC',
                      textColor: Colors.grey,
                    ),
                    CalacButton(
                      text: 'C',
                      textColor: Colors.grey,
                    ),
                    CalacButton(
                      text: '%',
                      textColor: Colors.red,
                    ),
                    CalacButton(
                      text: '/',
                      textColor: Colors.red,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CalacButton(
                      text: '1',
                      textColor: Colors.black12,
                    ),
                    CalacButton(
                      text: '2',
                      textColor: Colors.black12,
                    ),
                    CalacButton(
                      text: '3',
                      textColor: Colors.black12,
                    ),
                    CalacButton(
                      text: 'x',
                      textColor: Colors.red,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CalacButton(
                      text: '4',
                      textColor: Colors.black12,
                    ),
                    CalacButton(
                      text: '5',
                      textColor: Colors.black12,
                    ),
                    CalacButton(
                      text: '6',
                      textColor: Colors.black12,
                    ),
                    CalacButton(
                      text: '-',
                      textColor: Colors.red,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CalacButton(
                      text: '7',
                      textColor: Colors.black12,
                    ),
                    CalacButton(
                      text: '8',
                      textColor: Colors.black12,
                    ),
                    CalacButton(
                      text: '9',
                      textColor: Colors.black12,
                    ),
                    CalacButton(
                      text: '+',
                      textColor: Colors.red,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CalacButton(
                      text: '.',
                      textColor: Colors.black12,
                    ),
                    CalacButton(
                      text: '0',
                      textColor: Colors.black12,
                    ),
                    CalacButton(
                      text: '00',
                      textColor: Colors.black12,
                    ),
                    CalacButton(
                      text: '=',
                      textColor: Colors.amber,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
