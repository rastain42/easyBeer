import 'package:flutter/material.dart';
import 'package:flutter_stacked_nested_navigation/ui/theme/theme.dart';

class AppTextStyles {
  const AppTextStyles();

  static AppTextStyle get sfProDisplay => AppTextStyle.sfProDisplay();

  static TextStyle get h1 => sfProDisplay
      .copyWith(
        fontSize: 28,
      )
      .bold;

  static TextStyle get h2 => sfProDisplay
      .copyWith(
        fontSize: 24,
      )
      .semiBold;

  static TextStyle get h3 => sfProDisplay
      .copyWith(
        fontSize: 20,
      )
      .bold;

  static TextStyle get h4 => sfProDisplay.copyWith(
        fontSize: 18,
      );

  static TextStyle get h5 => sfProDisplay
      .copyWith(
        fontSize: 17,
      )
      .bold;

  static TextStyle get h6 => sfProDisplay
      .copyWith(
        fontSize: 14,
      )
      .bold;

  static TextStyle get body => sfProDisplay.copyWith(
        fontSize: 16,
      );

  static TextStyle get label => sfProDisplay.copyWith(
        fontSize: 14,
      );

  static TextStyle get legend => sfProDisplay.copyWith(
        fontSize: 12,
      );

  static TextStyle get small => sfProDisplay.copyWith(
        fontSize: 10,
      );
}

class DefaultAppTextStyles extends AppTextStyles {
  const DefaultAppTextStyles();
}

class AppTextStylesLineSpacing extends AppTextStyles {
  const AppTextStylesLineSpacing();

  @override
  AppTextStyle get sfProDisplay => AppTextStyle.sfProDisplay(lineSpacing: 1.8);
}

class AppTextStylesAdaptedFont extends AppTextStyles {
  const AppTextStylesAdaptedFont();

  @override
  AppTextStyle get sfProDisplay => AppTextStyle.luciole();
}

class AppTextStylesAdaptedFontAndLineSpacing extends AppTextStyles {
  const AppTextStylesAdaptedFontAndLineSpacing();

  @override
  AppTextStyle get sfProDisplay => AppTextStyle.luciole(lineSpacing: 1.8);
}

class AppTextStyle extends TextStyle {
  const AppTextStyle({
    Color? color,
    FontWeight? fontWeight = FontWeight.normal,
    FontStyle? fontStyle = FontStyle.normal,
    double? fontSize,
    String? fontFamily,
    double? lineSpacing,
  }) : super(
          color: color,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          fontSize: fontSize,
          height: lineSpacing ?? 1.3,
          fontFamily: fontFamily,
        );

  factory AppTextStyle.luciole({
    Color? color,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? fontSize,
    double? lineSpacing,
  }) =>
      AppTextStyle(
        color: color,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        fontSize: fontSize,
        lineSpacing: lineSpacing,
        fontFamily: 'Luciole',
      );

  factory AppTextStyle.sfProDisplay({
    Color? color,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? fontSize,
    double? lineSpacing,
  }) =>
      AppTextStyle(
        color: color,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        fontSize: fontSize,
        lineSpacing: lineSpacing,
        fontFamily: 'SF-Pro-Display',
      );
}

extension TextStyleExtension on TextStyle {
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);

  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);

  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);

  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);

  TextStyle get underline => copyWith(decoration: TextDecoration.underline);

  TextStyle get lineThrough => copyWith(decoration: TextDecoration.lineThrough);

  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);

  TextStyle get size10 => copyWith(fontSize: 10);

  TextStyle get size11 => copyWith(fontSize: 11);

  TextStyle get size12 => copyWith(fontSize: 12);

  TextStyle get size13 => copyWith(fontSize: 13);

  TextStyle get size14 => copyWith(fontSize: 14);

  TextStyle get size15 => copyWith(fontSize: 15);

  TextStyle get size16 => copyWith(fontSize: 16);

  TextStyle get size17 => copyWith(fontSize: 17);

  TextStyle get size18 => copyWith(fontSize: 18);

  TextStyle get size20 => copyWith(fontSize: 20);

  TextStyle get size21 => copyWith(fontSize: 21);

  TextStyle get size22 => copyWith(fontSize: 22);

  TextStyle get size23 => copyWith(fontSize: 23);

  TextStyle get size25 => copyWith(fontSize: 25);

  TextStyle get size32 => copyWith(fontSize: 32);

  TextStyle get size35 => copyWith(fontSize: 35);

  TextStyle get size38 => copyWith(fontSize: 38);

  TextStyle get size40 => copyWith(fontSize: 40);

  TextStyle get size44 => copyWith(fontSize: 44);

  TextStyle get size100 => copyWith(fontSize: 100);

  TextStyle get white => copyWith(color: RomTheme.white);

  TextStyle get black => copyWith(color: RomTheme.grey.shade900);

  TextStyle get lightGreyTextColor => copyWith(color: const Color(0xFF7E8B99));
}

TextStyle gaugeMinimumMaximumStyle =
    AppTextStyle.sfProDisplay().lightGreyTextColor.size16.medium;
TextStyle amountTextStyle = AppTextStyle.sfProDisplay().black.size20.bold;
TextStyle previsionalAmountTextStyle =
    AppTextStyle.sfProDisplay().lightGreyTextColor.size14.bold;
TextStyle bodyGreyTextStyle =
    AppTextStyle.sfProDisplay().lightGreyTextColor.size16.medium;
TextStyle homeAppBarGreetingStyle =
    AppTextStyle.sfProDisplay().white.size14.medium;
TextStyle homeAppBarUserNameStyle =
    AppTextStyle.sfProDisplay().white.size16.bold;
TextStyle sectionTitleTextStyle = AppTextStyle.sfProDisplay().black.size20.bold;
