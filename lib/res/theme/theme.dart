import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  radioTheme:
      RadioThemeData(fillColor: WidgetStateProperty.all(CustomColors.primary)),
  iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(CustomColors.primary))),
  iconTheme: IconThemeData(color: CustomColors.lightScaffold),
  snackBarTheme: SnackBarThemeData(
      backgroundColor: CustomColors.primary,
      behavior: SnackBarBehavior.floating),
  dialogTheme: DialogTheme(
    backgroundColor: CustomColors.white,
  ),
  bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)))),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: CustomColors.white,
      unselectedItemColor: CustomColors.grey,
      selectedItemColor: CustomColors.white),
  splashColor: CustomColors.white.withOpacity(.5),
  highlightColor: CustomColors.white.withOpacity(.5),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: CustomColors.primary,
    selectionColor: CustomColors.primary,
    selectionHandleColor: CustomColors.white,
  ),
  colorScheme: ColorScheme.fromSwatch(
    accentColor: CustomColors.primary,
  ),
  checkboxTheme: CheckboxThemeData(side: BorderSide(color: CustomColors.white)),
  listTileTheme: ListTileThemeData(
      tileColor: CustomColors.bodyDark,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: CustomColors.grey),
          borderRadius: BorderRadius.circular(5))),
  textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
          overlayColor:
              MaterialStateColor.resolveWith((states) => CustomColors.primary),
          foregroundColor: WidgetStatePropertyAll(CustomColors.primary))),
  dividerColor: CustomColors.grey,
  appBarTheme: AppBarTheme(
      color: CustomColors.darkScaffold,
      elevation: 0,
      surfaceTintColor: Colors.transparent),
  scaffoldBackgroundColor: CustomColors.darkScaffold,
  primaryColor: CustomColors.primary,
  primaryColorLight: CustomColors.primary.withOpacity(.5),
  brightness: Brightness.light,
  hintColor: CustomColors.grey,
  switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all(CustomColors.primary.withOpacity(.8)),
      trackColor:
          WidgetStateProperty.all(CustomColors.primary.withOpacity(.1))),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          fixedSize: const WidgetStatePropertyAll<Size>(Size(999, 50)),
          backgroundColor: WidgetStatePropertyAll(CustomColors.primary),
          padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(horizontal: 10, vertical: 10)))),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Georgia',
      fontSize: 40.0,
      fontWeight: FontWeight.bold,
      color: CustomColors.white,
    ),
    displayMedium: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
      color: CustomColors.white,
      fontFamily: 'Poppins',
    ),
    displaySmall: const TextStyle(
      fontSize: 14.0,
      fontFamily: 'Poppins',
      color: Colors.grey,
    ),
    titleLarge: TextStyle(
      fontSize: 24.0,
      color: CustomColors.white,
      fontFamily: 'Poppins',
    ),
    titleSmall: TextStyle(
      color: CustomColors.white,
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
    ),
    headlineMedium: TextStyle(
      fontSize: 24.0,
      fontFamily: 'Poppins',
      color: CustomColors.white,
    ),
    headlineSmall: TextStyle(
      fontSize: 16.0,
      fontFamily: 'Poppins',
      color: CustomColors.white,
    ),
    bodySmall: TextStyle(
      color: CustomColors.grey,
      fontSize: 16.0,
      fontFamily: 'Poppins',
    ),
    bodyMedium: TextStyle(
      color: CustomColors.bodyGrey,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      color: CustomColors.lightScaffold,
      fontSize: 20,
      fontFamily: 'Poppins',
    ),
  ),
);

ThemeData lightTheme = ThemeData(
  radioTheme:
      RadioThemeData(fillColor: WidgetStateProperty.all(CustomColors.primary)),
  iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(CustomColors.primary),
          backgroundColor: WidgetStateProperty.all(Colors.transparent))),
  fontFamily: 'Poppins',
  snackBarTheme: SnackBarThemeData(
    backgroundColor: CustomColors.primary,
    behavior: SnackBarBehavior.fixed,
  ),
  iconTheme: IconThemeData(color: CustomColors.darkScaffold),
  dialogTheme: DialogTheme(
    backgroundColor: CustomColors.white,
  ),
  bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)))),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: CustomColors.white,
      unselectedItemColor: CustomColors.grey,
      selectedItemColor: CustomColors.white),
  splashColor: CustomColors.white.withOpacity(.5),
  highlightColor: CustomColors.white.withOpacity(.5),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: CustomColors.primary,
    selectionColor: CustomColors.primary,
    selectionHandleColor: CustomColors.white,
  ),
  colorScheme: ColorScheme.fromSwatch(
    accentColor: CustomColors.primary,
    // primarySwatch: CustomColors.primary
  ),
  listTileTheme: ListTileThemeData(
      tileColor: CustomColors.bodyGrey2,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: CustomColors.grey),
          borderRadius: BorderRadius.circular(5))),
  dividerColor: CustomColors.grey,
  textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(CustomColors.primary))),
  appBarTheme: AppBarTheme(
      color: CustomColors.lightScaffold,
      elevation: 0,
      surfaceTintColor: Colors.transparent),
  scaffoldBackgroundColor: CustomColors.lightScaffold,
  primaryColor: CustomColors.primary,
  primaryColorLight: CustomColors.primary.withOpacity(.5),
  brightness: Brightness.light,
  hintColor: CustomColors.grey,
  switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all(CustomColors.primary.withOpacity(.5)),
      trackColor: WidgetStateProperty.all(CustomColors.bg)),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          fixedSize: const WidgetStatePropertyAll<Size>(Size(999, 40)),
          backgroundColor: WidgetStatePropertyAll(CustomColors.primary),
          padding: const WidgetStatePropertyAll<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(horizontal: 10, vertical: 10)))),
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: 40.0,
      fontWeight: FontWeight.bold,
      color: CustomColors.black,
      fontFamily: 'Poppins',
    ),
    displayMedium: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
      color: CustomColors.black,
      fontFamily: 'Poppins',
    ),
    displaySmall: const TextStyle(
      fontSize: 14.0,
      color: Colors.grey,
      fontFamily: 'Poppins',
    ),
    headlineMedium: TextStyle(
      fontSize: 24.0,
      color: CustomColors.black,
      fontFamily: 'Poppins',
    ),
    headlineSmall: TextStyle(
      fontSize: 16.0,
      fontFamily: 'Poppins',
      color: CustomColors.black,
    ),
    titleLarge: TextStyle(
      fontSize: 24.0,
      color: CustomColors.black,
      fontFamily: 'Poppins',
    ),
    titleSmall: TextStyle(
      fontFamily: 'Poppins',
      color: CustomColors.black,
      fontSize: 16.0,
    ),
    bodyLarge: TextStyle(
      color: CustomColors.darkScaffold,
      fontSize: 20,
      fontFamily: 'Poppins',
    ),
    bodyMedium: TextStyle(
      color: CustomColors.bodyGrey,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
      color: CustomColors.black,
      fontSize: 12.0,
      fontFamily: 'Poppins',
    ),
  ),
);

class CustomColors {
  static Color primary = const Color(0xffFFCD07);
  static Color primaryLight = const Color(0xffFFCD07).withOpacity(.5);
  static Color error = Colors.red;
  static Color success = Colors.green;
  static Color black = Colors.black;
  static Color darkScaffold = const Color(0xff060606);
  static Color lightScaffold = Colors.white;
  static Color bg = Colors.black12.withOpacity(.5);
  static Color white = Colors.white;
  static Color grey = Colors.grey;
  static Color textGrey = const Color(0xff5F5F5F);
  static Color textColor = const Color(0xff212121);
  static Color chatTextColor = const Color(0xff1e1e1e);
  static Color hintGrey = const Color(0xff686868);
  static Color customGrey = const Color(0xff6b7a9f);
  static Color bodyGrey = const Color(0xFF807A6B);
  static Color bodyGrey2 = const Color(0xFFF3F5F7);
  static Color bodyDark = const Color(0xFF2e2e35);
}
