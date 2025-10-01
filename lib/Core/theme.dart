import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FontSizes{
  static const small= 12.0;
  static const standard= 14.0;
  static const standardUp= 16.0;
  static const medium= 20.0;
  static const large= 28.0;
}

class AppColors {
  // Light Theme Colors (modern soft tones)
  static const Color primaryLight = Color(0xFF4A90E2);   // Softer blue
  static const Color secondaryLight = Color(0xFF50E3C2); // Aqua-green accent
  static const Color backgroundLight = Color(0xFFF5F7FA); // Soft off-white
  static const Color surfaceLight = Color(0xFFFFFFFF);    // White cards
  static const Color errorLight = Color(0xFFE74C3C);      // Soft red

  // Dark Theme Colors (matching RegisterPageDemo aesthetic)
  static const Color primaryDark = Color(0xFF00BFA6);     // Teal accent from register
  static const Color secondaryDark = Color(0xFF4DD0E1);   // Teal accent
  static const Color backgroundDark = Color(0xFF1E1F25);  // Soft dark gray (not black)
  static const Color surfaceDark = Color(0xFF2A2C36);     // Card gray
  static const Color errorDark = Color(0xFFEF5350);       // Soft red

  // Text Colors
  static const Color textPrimaryLight = Color(0xFF2C3E50);   // Dark gray (not full black)
  static const Color textSecondaryLight = Color(0xFF7F8C8D); // Muted gray
  static const Color textPrimaryDark = Color(0xFFEAECEE);    // Soft white
  static const Color textSecondaryDark = Color(0xFF95A5A6);  // Muted gray

  // Chat Colors (Updated to match register theme)
  static const Color chatBubbleUser = Color(0xFF00BFA6);     // Teal accent
  static const Color chatBubbleOther = Color(0xFFEAEAEA);    // Light gray bubble
  static const Color chatBubbleUserDark = Color(0xFF00BFA6); // Teal accent
  static const Color chatBubbleOtherDark = Color(0xFF2A2C36); // Dark surface color

  // Status Colors
  static const Color onlineGreen = Color(0xFF2ECC71);   // Modern green
  static const Color offlineGray = Color(0xFF95A5A6);   // Soft muted gray
  static const Color awayOrange = Color(0xFFF39C12);    // Warm orange
  static const Color messageListPage = Color(0xFF292F3F);

  // Input field colors (matching register demo)
  static const Color inputFillDark = Color(0xFF212121);  // Dark input background
  static const Color inputBorderDark = Color(0xFF00BFA6); // Teal border
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: AppColors.primaryLight,
      scaffoldBackgroundColor: AppColors.backgroundLight,

      colorScheme: const ColorScheme.light(
        primary: AppColors.primaryLight,
        secondary: AppColors.secondaryLight,
        background: AppColors.backgroundLight,
        surface: AppColors.surfaceLight,
        error: AppColors.errorLight,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onBackground: AppColors.textPrimaryLight,
        onSurface: AppColors.textPrimaryLight,
        onError: Colors.white,
      ),

      textTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: AppColors.textPrimaryLight,
        displayColor: AppColors.textPrimaryLight,
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.surfaceLight,
        foregroundColor: AppColors.textPrimaryLight,
        elevation: 0,
        centerTitle: true,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryLight,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surfaceLight,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.primaryLight, width: 1.5),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: AppColors.primaryDark,
      scaffoldBackgroundColor: AppColors.backgroundDark,

      colorScheme: const ColorScheme.dark(
        primary: AppColors.primaryDark,
        secondary: AppColors.secondaryDark,
        background: AppColors.backgroundDark,
        surface: AppColors.surfaceDark,
        error: AppColors.errorDark,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onBackground: AppColors.textPrimaryDark,
        onSurface: AppColors.textPrimaryDark,
        onError: Colors.white,
      ),

      textTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: AppColors.textPrimaryDark,
        displayColor: AppColors.textPrimaryDark,
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.textPrimaryDark,
        elevation: 0,
        centerTitle: true,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryDark,
          foregroundColor: Colors.white,
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.inputFillDark,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.inputBorderDark, width: 1.5),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
      ),
    );
  }
}
