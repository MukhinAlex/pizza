import 'package:flutter/material.dart';

ThemeData globalTheme() => ThemeData(
  fontFamily: 'Georgia',
  splashColor: Colors.yellow,

  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.light,
    primarySwatch: Colors.lightGreen,
  ).copyWith(
    secondary: Colors.yellow,
    secondaryVariant: Colors.green,
  ),

  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline2: TextStyle(fontSize: 28.0, fontFamily: 'Hind', fontStyle:FontStyle.italic),
    headline6: TextStyle(fontSize: 30.0, color: Colors.white, fontStyle: FontStyle.italic),
    bodyText2: TextStyle(fontSize: 16.0, fontFamily: 'Hind', color: Colors.indigo),
  ),
);