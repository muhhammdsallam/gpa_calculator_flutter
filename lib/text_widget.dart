import 'package:flutter/material.dart';
import 'constants.dart';

class TextWidget extends StatelessWidget {
  final String label;
  TextWidget({required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
            border: InputBorder.none,
            labelText: label,
            labelStyle: TextStyle(color: Colors.grey),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: kRightAppBarColor, width: 2.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kLeftAppBarColor),
              borderRadius: BorderRadius.circular(10),
            )));
  }
}
