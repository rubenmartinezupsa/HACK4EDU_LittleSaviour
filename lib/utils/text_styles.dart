import 'package:flutter/material.dart';
import 'package:little_savior/utils/colors.dart';

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

  static const TextStyle questionTextStyle = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
    fontSize: 23,
    color: Color.fromRGBO(217, 56, 72, 1),
  );
  static const TextStyle answerTextStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 20,

    color: Color.fromRGBO(217, 56, 72, 1),
  );
  static const TextStyle cardTitleStyle = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: AppColors.cardTextColor,
  );
  static const TextStyle cardDescStyle = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: AppColors.cardTextColor,
  );
}