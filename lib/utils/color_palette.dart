import 'package:flutter/material.dart';

class ColorPalette {
  const ColorPalette({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.quaternary,
  });

  final ColorIn primary;
  final ColorIn secondary;
  final ColorIn tertiary;
  final ColorIn quaternary;
}

class ColorIn {
  const ColorIn({
    this.white = Colors.white,
    required this.light,
    this.tone20,
    required this.midLight,
    this.tone40,
    required this.normal,
    this.tone60,
    required this.midDark,
    this.tone80,
    required this.dark,
    this.black = Colors.black,
  });

  final Color white;
  final Color light;
  final Color? tone20;
  final Color midLight;
  final Color? tone40;
  final Color normal;
  final Color? tone60;
  final Color midDark;
  final Color? tone80;
  final Color dark;
  final Color black;
}
