// ignore_for_file: prefer_const_constructors, file_names

import 'package:calculator/widgets/calcButton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalcAction extends StatefulWidget {
  const CalcAction({Key? key}) : super(key: key);

  @override
  _CalcActionState createState() => _CalcActionState();
}

class _CalcActionState extends State<CalcAction> {
  String _history = '';
  String _evaluate = '';
  void numclick(String test) {
    setState(() {
      _evaluate = _evaluate + test;
    });
  }
  void mulclick(String test) {
    setState(() {
      _evaluate = _evaluate + '*' ;
    });
  }

  void allClear(String test) {
    setState(() {
      _evaluate = '';
      _history = '';
    });
  }

  void clear(String test) {
    setState(() {
      _history = '';
    });
  }

  void findAns(String test) {
    Parser p = Parser();
    Expression exp = p.parse(_evaluate);
    ContextModel cm = ContextModel();

    setState(() {
      _history = _evaluate;
      _evaluate = exp.evaluate(EvaluationType.REAL, cm).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  _history,
                  style: TextStyle(color: Colors.white54, fontSize: 35),
                ),
              ),
              alignment: const Alignment(1.0, 1.0),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  _evaluate,
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
              ),
              alignment: const Alignment(1.0, 1.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalacButton(
                  text: 'AC',
                  textColor: Colors.blueGrey,
                  callf: allClear,
                ),
                CalacButton(
                  text: 'C',
                  textColor: Colors.blueGrey,
                  callf: clear,
                ),
                CalacButton(
                  text: '%',
                  textColor: Colors.grey,
                  callf: numclick,
                ),
                CalacButton(
                  text: '/',
                  textColor: Colors.grey,
                  callf: numclick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalacButton(
                  text: '1',
                  textColor: Colors.black12,
                  callf: numclick,
                ),
                CalacButton(
                  text: '2',
                  textColor: Colors.black12,
                  callf: numclick,
                ),
                CalacButton(
                  text: '3',
                  textColor: Colors.black12,
                  callf: numclick,
                ),
                CalacButton(
                  text: 'x',
                  textColor: Colors.grey,
                  callf: mulclick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalacButton(
                  text: '4',
                  textColor: Colors.black12,
                  callf: numclick,
                ),
                CalacButton(
                  text: '5',
                  textColor: Colors.black12,
                  callf: numclick,
                ),
                CalacButton(
                  text: '6',
                  textColor: Colors.black12,
                  callf: numclick,
                ),
                CalacButton(
                  text: '-',
                  textColor: Colors.grey,
                  callf: numclick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalacButton(
                  text: '7',
                  textColor: Colors.black12,
                  callf: numclick,
                ),
                CalacButton(
                  text: '8',
                  textColor: Colors.black12,
                  callf: numclick,
                ),
                CalacButton(
                  text: '9',
                  textColor: Colors.black12,
                  callf: numclick,
                ),
                CalacButton(
                  text: '+',
                  textColor: Colors.grey,
                  callf: numclick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalacButton(
                  text: '.',
                  textColor: Colors.black12,
                  callf: numclick,
                ),
                CalacButton(
                  text: '0',
                  textColor: Colors.black12,
                  callf: numclick,
                ),
                CalacButton(
                  text: '00',
                  textColor: Colors.black12,
                  callf: numclick,
                ),
                CalacButton(
                  text: '=',
                  textColor: Colors.lightGreen,
                  callf: findAns,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
