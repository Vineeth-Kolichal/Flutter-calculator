// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CalacButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Function callf;
  const CalacButton({Key? key, 
  required this.text,
  required this.textColor,
  required this.callf,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      color:textColor
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(16.0),
                    primary: Colors.white,
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    callf(text);
                  },
                  child: Text(text),
                ),
              ],
            ),
          ),
    );
  }
}
