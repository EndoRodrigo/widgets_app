import 'package:flutter/material.dart';

class AppTheme {

  final int selectedColor;

  AppTheme({required this.selectedColor})
      :assert(selectedColor >= 0 && selectedColor <=
      _colorThemes.length - 1, 'El color esta entre 0 - ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],


    );
  }
}

final List<Color> _colorThemes = [
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];