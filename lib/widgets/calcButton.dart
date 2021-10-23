// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CalacButton extends StatelessWidget {
  final String text;
  final Color textColor;
  const CalacButton({Key? key, 
  required this.text,
  required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
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
                    textStyle: const TextStyle(fontSize: 25),
                  ),
                  onPressed: () {},
                  child: Text(text),
                ),
              ],
            ),
          ),
    );
  }
}
