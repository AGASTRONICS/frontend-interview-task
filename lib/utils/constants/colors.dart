import 'package:flutter/material.dart';

class StrollColors {
  StrollColors._();

  // App Basic Colors
  static const Color primary = Color(0xccccc4ff);
  static const Color secondary = Color(0xFFCFF8FF);
  static const Color accent = Color(0xCCCCC8FF);

  // Shadow
  static const Color shadow = Color(0xCC9D89E1);
  static const Color darkShadow = Color(0xCC242427);

  // Mode
  static const Color light = Colors.white;
  static const Color dark = Colors.black;

  // Gradient colors
  static Gradient linerGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xCCCCC8FF),
        Color(0xCCCCC8FF),
        Color(0xCCCCC8FF),
      ]);
}
