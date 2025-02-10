import 'package:flutter/material.dart';

final ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade200, // Light neutral background
    primary: Colors.blueGrey.shade200, // Primary color for UI elements
    onPrimary: Colors.white, // Text/icons on primary background
    secondary: Colors.amber.shade600, // Accent color for highlights
    onSecondary: Colors.black, // Text/icons on secondary background
    inversePrimary: Colors.blueGrey.shade900, // Darker shade for contrast
  ),
);
