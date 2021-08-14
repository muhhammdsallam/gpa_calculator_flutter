import 'package:flutter/material.dart';
import 'input_screen.dart';

void main() => runApp(GPAcalculator());

class GPAcalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFFF28074),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: InputPage(),
    );
  }
}
