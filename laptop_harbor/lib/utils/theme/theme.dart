import 'package:flutter/material.dart';
import 'package:laptop_harbor/utils/theme/custom_themes/appbar_theme.dart';
import 'package:laptop_harbor/utils/theme/custom_themes/bottome_sheet_theme.dart';
import 'package:laptop_harbor/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:laptop_harbor/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:laptop_harbor/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:laptop_harbor/utils/theme/custom_themes/text_field_theme.dart';
import 'package:laptop_harbor/utils/theme/custom_themes/text_theme.dart';

import 'custom_themes/chip_theme.dart';

class LHTheme {
  LHTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: LHTextTheme.lightTextTheme,
    chipTheme: LHChipTheme.lightChipTheme,
    appBarTheme: LHAppBarTheme.lightAppBarTheme,
    checkboxTheme: LHCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: LHBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: LHElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: LHOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: LHTextFormFieldTheme.lightInputDecorationTheme,

  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: LHTextTheme.darkTextTheme,
    elevatedButtonTheme: LHElevatedButtonTheme.darkElevatedButtonTheme,
    chipTheme: LHChipTheme.darkChipTheme,
    appBarTheme: LHAppBarTheme.darkAppBarTheme,
    checkboxTheme: LHCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: LHBottomSheetTheme.darkBottomSheetTheme,
    outlinedButtonTheme: LHOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: LHTextFormFieldTheme.darkInputDecorationTheme,
  );
}