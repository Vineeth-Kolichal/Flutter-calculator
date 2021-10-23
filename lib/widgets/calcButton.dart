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
    return SizedBox(
      width: 65,
      height: 65,
      child: TextButton(
        child: Text(text),
        onPressed: () {},
      ),
    );
  }
}
