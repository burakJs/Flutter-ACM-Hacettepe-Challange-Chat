import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'light/ilight_theme_interface.dart';

class AppThemeLight extends AppTheme with ILightTheme {
  static AppThemeLight? _instance;
  static AppThemeLight? get instance {
    _instance ??= AppThemeLight._init();
    return _instance;
  }

  AppThemeLight._init();
  // ThemeData get theme => redTheme;
  @override
  ThemeData get theme => ThemeData(
        colorScheme: _appColorsScheme,
        scaffoldBackgroundColor: Color(0xffE9E7EB),
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
            brightness: Brightness.light,
            color: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.white, size: 21),
            titleTextStyle: TextStyle(
              color: Colors.red,
            )),
      );

  ColorScheme get _appColorsScheme {
    return ColorScheme(
      primary: colorSchemeLight!.codGray,
      primaryVariant: Colors.grey,
      secondary: colorSchemeLight!.athensGray,
      secondaryVariant: Colors.white,
      surface: colorSchemeLight!.quillGray,
      background: colorSchemeLight!.emerald,
      error: Colors.white,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Color(0xffE9E7EB),
      onBackground: Colors.black12,
      onError: Color(0xFFFABD23),
      brightness: Brightness.light,
    );
  }
}
