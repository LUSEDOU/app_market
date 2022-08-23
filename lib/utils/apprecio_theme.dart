import 'package:apprecio_clone/utils/apprecio_colors.dart';
import 'package:apprecio_clone/utils/utils.dart';
import 'package:flutter/material.dart';

const apprecioPalette = ColorPalette(
  primary: ColorIn(
    light: kRedTone90,
    midLight: kRedTone70,
    normal: kRedTone50,
    midDark: kRedTone30,
    dark: kRedTone10,
  ),
  secondary: ColorIn(
    light: kBlueTone90,
    midLight: kBlueTone70,
    normal: kBlueTone50,
    midDark: kBlueTone30,
    dark: kBlueTone10,
  ),
  tertiary: ColorIn(
    light: kRedTone90,
    midLight: kRedTone70,
    normal: kRedTone50,
    midDark: kRedTone30,
    dark: kRedTone10,
  ),
);

ThemeData theme = buildThemeData(palette: apprecioPalette);
