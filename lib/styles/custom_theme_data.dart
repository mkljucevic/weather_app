import 'package:flutter/material.dart';
import 'package:weather_app/styles/colors.dart';

final ThemeData cLightThemeData = ThemeData(
  scaffoldBackgroundColor: cBgColorLight,

  cardColor: cCardBgLight,
  iconTheme: const IconThemeData(
    color: cTextColorLight,
  ),

  // text and fonts
  fontFamily: 'Quicksand',
  textTheme: const TextTheme(
    // for main weather temperature display
    displayLarge: TextStyle(
      fontSize: 55,
      fontWeight: FontWeight.w600,
      color: cTextColorLight,
    ),

    // for top-header title
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: cTextColorLight,
    ),

    // smallest app font
    bodySmall: TextStyle(
      fontSize: 10,
      color: cTextColorLight,
      fontWeight: FontWeight.w400,
    ),

    // medium app font
    bodyMedium: TextStyle(
      fontSize: 14,
      color: cTextColorLight,
    ),

    // large app font
    bodyLarge: TextStyle(
      fontSize: 16,
      color: cTextColorLight,
    ),
  ),
);

final ThemeData cDarkThemeData = ThemeData(
  scaffoldBackgroundColor: cBgColorDark,

  cardColor: cCardBgDark,
  iconTheme: const IconThemeData(
    color: cTextColorDark,
  ),

  // text and fonts
  fontFamily: 'Quicksand',
  textTheme: const TextTheme(
    // for main weather temperature display
    displayLarge: TextStyle(
      fontSize: 55,
      fontWeight: FontWeight.w600,
      color: cTextColorDark,
    ),

    // for top-header title
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: cTextColorDark,
    ),

    // smallest app font
    bodySmall: TextStyle(
      fontSize: 10,
      color: cTextColorDark,
    ),

    // medium app font
    bodyMedium: TextStyle(
      fontSize: 14,
      color: cTextColorDark,
    ),

    // large app font
    bodyLarge: TextStyle(
      fontSize: 16,
      color: cTextColorDark,
    ),
  ),
);
