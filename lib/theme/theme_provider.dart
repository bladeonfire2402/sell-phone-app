import 'package:cellphone/theme/theme.dart';
import 'package:flutter/material.dart';
// Ensure this path is correct

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData; // Corrected getter

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode; // Uses the corrected setter
    } else {
      themeData = lightMode; // Uses the corrected setter
    }
  }
}
