import 'package:flutter/material.dart';

extension BrandStyle on TextTheme {
  static TextStyle get tittle {
    return TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: BrandColors.accentColorVariant);
  }

  static TextStyle get body {
    return TextStyle(fontSize: 18, fontWeight: FontWeight.normal);
  }
}

extension BrandColors on Color {
  static Color get primaryColor {
    return Color(0xFFFED461);
  }

  static Color get accentColor {
    return Color(0xFF1B232C);
  }

  static Color get secondaryColor {
    return Color(0xFF63BB45);
  }

  static Color get backgroundColor {
    return Color(0xFFFFFFFF);
  }

  static Color get backgroundColorVariant {
    return Color(0xFFF3F4F9);
  }

  static Color get accentColorVariant {
    return Color(0xFF3F3D56);
  }
}
