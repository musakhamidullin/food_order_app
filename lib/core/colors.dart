import 'package:flutter/material.dart';

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFE7ECFB),
  100: Color(0xFFC2D1F6),
  200: Color(0xFF99B2F0),
  300: Color(0xFF7093E9),
  400: Color(0xFF527BE5),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF2E5CDC),
  700: Color(0xFF2752D8),
  800: Color(0xFF2048D3),
  900: Color(0xFF1436CB),
});
const int _primaryPrimaryValue = 0xFF3364E0;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFFCFCFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFF96A6FF),
  700: Color(0xFF7C90FF),
});
const int _primaryAccentValue = 0xFFC9D1FF;
