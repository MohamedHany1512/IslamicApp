import 'package:flutter/material.dart';

class AppColors {
  static const navy = Color(0xFF0B1720);
  static const navyLight = Color(0xFF122733);
  static const emerald = Color(0xFF2AA889);
  static const emeraldDark = Color(0xFF176B5B);
  static const gold = Color(0xFFD9B45B);
  static const textPrimary = Color(0xFFF4F1E8);
  static const textMuted = Color(0xFFB7C5C1);
  static const line = Color(0xFF2D7567);
}

class AppTheme {
  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.emerald,
        onPrimary: AppColors.navy,
        secondary: AppColors.gold,
        onSecondary: AppColors.navy,
        surface: AppColors.navyLight,
        onSurface: AppColors.textPrimary,
      ),
      scaffoldBackgroundColor: AppColors.navy,
      dividerTheme: const DividerThemeData(
        color: AppColors.line,
        thickness: 1,
        space: 1,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.navyLight,
        selectedItemColor: AppColors.gold,
        unselectedItemColor: AppColors.textMuted,
        type: BottomNavigationBarType.fixed,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.emerald,
        foregroundColor: AppColors.navy,
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.gold,
      ),
    );
  }
}
