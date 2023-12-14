import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stacked_nested_navigation/ui/theme/rom_input_border.dart';
import 'package:smooth_corner/smooth_corner.dart';

class RomTheme {
  RomTheme(this.brightness);

  final Brightness brightness;

  static final ThemeData _baseTheme = ThemeData.light();

  static const MaterialColor beer = MaterialColor(
    0xFF555F6D,
    <int, Color>{
      1: Color(0xFFFFF897),
      2: Color(0xFFFAE96F),
      3: Color(0xFFF6C101),
      4: Color(0xFFEC9D00),
      5: Color(0xFFDF8D03),
      6: Color(0xFFC96E12),
    },
  );

  static const MaterialColor grey = MaterialColor(
    0xFF555F6D,
    <int, Color>{
      50: Color(0xFFF5F7F9),
      100: Color(0xFFF0F3F5),
      200: Color(0xFFE9ECEF),
      300: Color(0xFFDEE3E7),
      400: Color(0xFFCFD6DD),
      500: Color(0xFF9EA8B3),
      600: Color(0xFF7E8B99),
      700: Color(0xFF4A545E),
      800: Color(0xFF3A424A),
      900: Color(0xFF272E35),
    },
  );

  static const MaterialColor blue = MaterialColor(
    0xFF009FFF,
    <int, Color>{
      50: Color(0xFFF3FAFF),
      100: Color(0xFFDBF1FF),
      200: Color(0xFFB6E4FF),
      300: Color(0xFF92D6FF),
      400: Color(0xFF6DC8FF),
      500: Color(0xFF49BAFF),
      600: Color(0xFF24ADFF),
      700: Color(0xFF0084D4),
      800: Color(0xFF006AAA),
      900: Color(0xFF003555),
    },
  );

  static const MaterialColor red = MaterialColor(
    0xFFC53434,
    <int, Color>{
      50: Color(0xFFFEF5F5),
      100: Color(0xFFFFEBEB),
      200: Color(0xFFFEE6E6),
      300: Color(0xFFFCD9D9),
      400: Color(0xFFFCCFCF),
      500: Color(0xFFF49090),
      600: Color(0xFFF26464),
      700: Color(0xFFA13636),
      800: Color(0xFF952D2D),
      900: Color(0xFF6F2020),
    },
  );

  static const MaterialColor orange = MaterialColor(
    0xFFF59638,
    <int, Color>{
      50: Color(0xFFFFF5EB),
      100: Color(0xFFFFF0E0),
      200: Color(0xFFFFE8D1),
      300: Color(0xFFFCDEC0),
      400: Color(0xFFFFD4A8),
      500: Color(0xFFFEB872),
      600: Color(0xFFF6A351),
      700: Color(0xFFB4610E),
      800: Color(0xFFA05C1C),
      900: Color(0xFF7A4510),
    },
  );

  static const MaterialColor green = MaterialColor(
    0xFF1D7C4D,
    <int, Color>{
      50: Color(0xFFF4FBF7),
      100: Color(0xFFE6F9EF),
      200: Color(0xFFD8F8E7),
      300: Color(0xFFC6F1DA),
      400: Color(0xFFC2EBD5),
      500: Color(0xFF75CC9E),
      600: Color(0xFF4AA578),
      700: Color(0xFF1E714A),
      800: Color(0xFF196742),
      900: Color(0xFF0E4E30),
    },
  );

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  static Color barrier = black.withOpacity(0.8);

  static final BorderRadius boxRadius = BorderRadius.circular(12);
  static const double smoothness = 0.6;

  late final ThemeData themeData = _baseTheme.copyWith(
    cupertinoOverrideTheme: CupertinoThemeData(
      brightness: Brightness.light,
      barBackgroundColor: RomTheme.grey.shade50,
      textTheme: CupertinoTextThemeData(
        navLargeTitleTextStyle: TextStyle(
          color: RomTheme.grey.shade900,
          fontFamily: 'SF-Pro-Display',
          fontSize: 32,
          fontWeight: FontWeight.bold,
          height: 38 / 32,
        ),
      ),
    ),
    appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(color: RomTheme.grey.shade900),
      backgroundColor: RomTheme.grey.shade50,
      centerTitle: true,
      elevation: 0,
      iconTheme: IconThemeData(color: RomTheme.grey.shade900),
      toolbarHeight: 42,
    ),
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: Colors.transparent),
    chipTheme: ChipThemeData(
      selectedColor: blue.shade800,
      labelStyle: const TextStyle(
        fontSize: 16,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w500,
        height: 19 / 16,
      ),
    ),
    highlightColor: Colors.transparent,
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: RomInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: RomTheme.grey.shade200),
      ),
      focusedBorder: RomInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: RomTheme.grey.shade600),
      ),
      errorBorder: RomInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(color: RomTheme.red),
      ),
      focusedErrorBorder: RomInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: const BorderSide(color: RomTheme.red),
      ),
      disabledBorder: RomInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: RomTheme.grey.shade200),
      ),
      errorMaxLines: 2,
      filled: true,
      hintStyle: const TextStyle(
        fontSize: 16,
        height: 1,
        fontWeight: FontWeight.w400,
        color: Color(0xFF8E8E93),
      ),
      helperStyle: TextStyle(
        color: grey.shade700,
        fontFamily: 'SF-Pro-Display',
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 1,
      ),
      labelStyle: TextStyle(
        color: RomTheme.grey.shade600,
        fontFamily: 'SF-Pro-Display',
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 22.40 / 16,
      ),
      floatingLabelStyle: TextStyle(
        color: RomTheme.grey.shade600,
        fontFamily: 'SF-Pro-Display',
        fontSize: 18,
        fontWeight: FontWeight.w500,
        height: 1,
      ),
      errorStyle: const TextStyle(
        color: RomTheme.red,
        fontFamily: 'SF-Pro-Display',
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        height: 1,
      ),
      fillColor: white,
      focusColor: white,
      hoverColor: white,
      prefixIconColor: grey.shade600,
      suffixIconColor: grey.shade600,
    ),
    primaryColor: blue,
    progressIndicatorTheme: const ProgressIndicatorThemeData(color: blue),
    scaffoldBackgroundColor: RomTheme.grey.shade50,
    splashColor: Colors.transparent,
    textTheme: TextTheme(
      bodySmall: TextStyle(
        color: RomTheme.grey.shade900,
        fontFamily: 'SF-Pro-Display',
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 22 / 16,
      ),
      bodyMedium: TextStyle(
        color: RomTheme.grey.shade600,
        fontFamily: 'SF-Pro-Display',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        height: 22 / 16,
      ),
      bodyLarge: TextStyle(
        color: RomTheme.grey.shade900,
        fontFamily: 'SF-Pro-Display',
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      displayLarge: TextStyle(
        color: RomTheme.grey.shade900,
        fontFamily: 'SF-Pro-Display',
        fontSize: 32,
        fontWeight: FontWeight.bold,
        height: 38 / 32,
      ),
      headlineLarge: TextStyle(
        color: RomTheme.grey.shade900,
        fontFamily: 'SF-Pro-Display',
        fontSize: 20,
        fontWeight: FontWeight.bold,
        height: 24 / 20,
      ),
      headlineMedium: TextStyle(
        color: RomTheme.grey.shade600,
        fontFamily: 'SF-Pro-Display',
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.40,
      ),
      headlineSmall: TextStyle(
        color: RomTheme.grey.shade600,
        fontFamily: 'SF-Pro-Display',
        fontSize: 16,
        fontWeight: FontWeight.normal,
        height: 22 / 16,
      ),
      titleMedium: TextStyle(
        color: RomTheme.grey.shade900,
        fontFamily: 'SF-Pro-Display',
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: TextStyle(
        color: RomTheme.grey.shade900,
        fontSize: 16,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w700,
        height: 19 / 16,
        letterSpacing: .1,
      ),
      titleLarge: TextStyle(
        color: RomTheme.grey.shade900,
        fontSize: 32,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w700,
        height: 19 / 16,
        letterSpacing: .1,
      ),
      labelSmall: TextStyle(
        color: grey.shade600,
        fontSize: 14,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w500,
        height: 19.6 / 14,
        letterSpacing: 0,
      ),
      labelMedium: TextStyle(
        color: grey.shade600,
        fontSize: 16,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w500,
        height: 16 / 14,
        letterSpacing: .1,
      ),
    ),
    radioTheme: RadioThemeData(
      fillColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return blue;
        }
        return grey.shade400;
      }),
      splashRadius: 0,
    ),
    brightness: brightness,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: blue,
      onPrimary: blue,
      secondary: const Color(0xFFBBBBBB),
      onSecondary: const Color(0xFFEAEAEA),
      error: red,
      onError: red,
      background: RomTheme.grey.shade50,
      onBackground: RomTheme.grey.shade100,
      surface: blue.shade50,
      onSurface: blue.shade800,
      tertiary: white,
      primaryContainer: white,
    ),
    primaryColorDark: blue.shade800,
    cardTheme: CardTheme(
      shape: SmoothRectangleBorder(
        smoothness: 0.6,
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0,
      margin: EdgeInsets.zero,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.resolveWith<EdgeInsets>(
            (Set<MaterialState> states) {
          return const EdgeInsets.symmetric(vertical: 16);
        }),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
          return SmoothRectangleBorder(
              borderRadius: RomTheme.boxRadius,
              smoothness: RomTheme.smoothness);
        }),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return blue.shade700;
          } else if (states.contains(MaterialState.disabled)) {
            return blue.shade200;
          } else {
            return blue;
          }
        }),
        splashFactory: NoSplash.splashFactory,
        elevation: MaterialStateProperty.resolveWith<double>((_) => 0),
        textStyle: MaterialStateProperty.resolveWith<TextStyle>(
          (Set<MaterialState> states) => const TextStyle(color: white),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.resolveWith<double>((_) => 0),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
          return SmoothRectangleBorder(
              borderRadius: RomTheme.boxRadius,
              smoothness: RomTheme.smoothness);
        }),
        splashFactory: NoSplash.splashFactory,
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) => white),
      fillColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return blue;
        }
        return RomTheme.grey.shade300;
      }),
    ),
    iconTheme: IconThemeData(color: RomTheme.grey.shade900),
    dialogTheme: DialogTheme(
      elevation: 0,
      shape: SmoothRectangleBorder(
        borderRadius: BorderRadius.circular(6),
        smoothness: RomTheme.smoothness,
      ),
    ),
  );
}
