import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme({required bool isDark}) {
    late ThemeData baseTheme;

    if (isDark) {
      baseTheme = ThemeData.dark();
    } else {
      baseTheme = ThemeData.light();
    }

    return baseTheme.copyWith(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
      useMaterial3: true,
    );
  }
}
