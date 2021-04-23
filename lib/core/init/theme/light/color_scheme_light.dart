import 'package:flutter/material.dart';

class ColorSchemeLight {
  static ColorSchemeLight? _instance;
  static ColorSchemeLight? get instance {
    _instance ??= ColorSchemeLight._init();
    return _instance;
  }

  ColorSchemeLight._init();
  final Color codGray = Color(0xFF141414); //Font color
  final Color emerald = Color(0xFF45C451); //Bg
  final Color athensGray = Color(0xFFF1F1F4); //Message bg from other
  final Color quillGray = Color(0xFF969697); // Textfield Bg
}

//387196 - 866B96 - 2C2E33
