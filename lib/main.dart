import 'package:flutter/material.dart';
import 'package:calculator/widgets/calcButton.dart';


void main() {
  runApp( const CalcApp());
}
class CalcApp extends StatelessWidget {
  const CalcApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Center(
          child:CalacButton(text:'1', textColor: Colors.red,),
          ),
      ),
    );
  }
}