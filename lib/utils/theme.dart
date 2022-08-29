import 'package:app_market/utils/utils.dart';
import 'package:flutter/material.dart';

ThemeData buildThemeData({required ColorPalette palette}) {
  final base = ThemeData.light();
  const scheme = ColorScheme.light();

  return base.copyWith(
    useMaterial3: true,
    colorScheme: scheme.copyWith(
      primary: palette.primary.normal,
      onPrimary: palette.primary.white,
      primaryContainer: palette.primary.light,
      onPrimaryContainer: palette.primary.black,
      secondary: palette.secondary.normal,
      onSecondary: palette.secondary.white,
      secondaryContainer: palette.secondary.light,
      onSecondaryContainer: palette.secondary.black,
      tertiary: palette.tertiary.normal,
      onTertiary: palette.tertiary.white,
      tertiaryContainer: palette.tertiary.light,
      onTertiaryContainer: palette.tertiary.black,
      background: palette.secondary.light,
    ),
  );
}
