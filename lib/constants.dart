import 'package:flutter/material.dart';

const kLeftAppBarColor = Color(0xFFEF7067);
const kRightAppBarColor = Color(0xFFFECEB3);
const kTitleTextStyle = TextStyle(
    color: kLeftAppBarColor, fontSize: 20.0, fontWeight: FontWeight.bold);
const kTypingStyle = TextStyle(
    color: kLeftAppBarColor, fontSize: 15.0, fontWeight: FontWeight.bold);
const kColorGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[kLeftAppBarColor, kRightAppBarColor]);
