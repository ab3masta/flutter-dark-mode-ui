import 'package:flutter/material.dart';

enum AppTheme {
  BlueLight,
  BlueDark,
}

final appThemeData = {
  AppTheme.BlueLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue[400],
    accentColor: Colors.blue[700],
    primaryColorLight: Colors.blue[100],
    primaryColorDark: Colors.blue[900]
  ),
  AppTheme.BlueDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.grey[600],
    accentColor: Colors.grey[800],
    primaryColorLight: Colors.grey[400],
    primaryColorDark: Colors.grey[900]
  ),
};
