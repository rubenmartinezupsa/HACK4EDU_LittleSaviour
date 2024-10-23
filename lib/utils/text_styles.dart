import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle highlightedTextStyle = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w800, // ExtraBold
    fontSize: 30.0,
    color: Color(0xFFD93848),
    overflow: TextOverflow.clip,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
    fontSize: 18.0,
    color: Colors.white,
  );

  static const TextStyle normalTextStyle = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w800,
    fontSize: 18.0,
    color: Color(0xFFD93848),
  );
}