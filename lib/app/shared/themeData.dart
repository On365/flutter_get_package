import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF0175c2);
const Color secondaryColor = Color(0xFF13B9FD);

final customLightTheme = ThemeData(
  brightness: Brightness.light,
  accentColorBrightness: Brightness.light,
  colorScheme: const ColorScheme.dark().copyWith(
    primary: primaryColor,
    secondary: secondaryColor,
  ),
  primaryColor: Color(0xff2196F3),
  accentColor: Color(0xff03A9F4),
  dividerColor: Color(0xffBDBDBD),
  primaryColorLight: Color(0xffBBDEFB),
  primaryColorDark: Color(0xff1976D2),
  buttonColor: Color(0xff1976D2),
  indicatorColor: Colors.white,
  toggleableActiveColor: const Color(0xFF1E88E5),
  splashColor: Colors.white24,
  splashFactory: InkRipple.splashFactory,
  canvasColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  backgroundColor: Colors.white,
  errorColor: const Color(0xFFB00020),
  cardColor: Colors.white.withOpacity(.9),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: const Color(0xfff5f5f5),
  ),
  // buttonTheme: ButtonThemeData(
  //   colorScheme: const ColorScheme.dark().copyWith(
  //     primary: primaryColor,
  //     secondary: secondaryColor,
  //   ),
  //   textTheme: ButtonTextTheme.primary,
  // ),
);

final customDarkTheme = ThemeData(
  appBarTheme: AppBarTheme(
    color: Color(0xff2A2E43),
    elevation: 1.5,
  ),
  brightness: Brightness.dark,
  accentColorBrightness: Brightness.dark,
  primaryColor: Color(0xff0071bc),
  accentColor: Color(0xffFCCD00),
  primaryColorDark: Color(0xff000a12),
  primaryColorLight: Color(0x4f5b62),
  buttonColor: Color(0xff665EFF),
  indicatorColor: Colors.white,
  toggleableActiveColor: const Color(0xFF6997DF),
  canvasColor: const Color(0xFF202124),
  scaffoldBackgroundColor: const Color(0xff2A2E43),
  backgroundColor: const Color(0xff2A2E43),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: const Color(0xff42465D),
  ),
  errorColor: const Color(0xFFB00020),
  hintColor: const Color(0xFF8A8A8A),
  buttonTheme: ButtonThemeData(
    colorScheme: const ColorScheme.dark().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    ),
    textTheme: ButtonTextTheme.primary,
  ),
  bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Color(0xFF121212),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      )),
  textTheme: TextTheme(
    bodyText1: TextStyle(color: Color(0xFFFFFFFF)),
    bodyText2: TextStyle(color: Color(0xFF8A8A8A)),
    headline6: TextStyle(color: Color(0xFFFFFFFF)),
    subtitle1: TextStyle(color: Color(0xFF8A8A8A)),
    caption: TextStyle(color: Color(0xFF8A8A8A)),
    headline4: TextStyle(color: Color(0xFFF05A22)),
    headline3: TextStyle(color: Color(0xFFFFFFFF)),
    headline2: TextStyle(color: Color(0xFF1E1E1E)),
  ),
  cardColor: Color(0xFF363A4E),
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  // inputDecorationTheme: InputDecorationTheme(
  //   enabledBorder: OutlineInputBorder(
  //       borderSide: BorderSide(
  //         color: Color(0xFF8A8A8A),
  //       ),
  //       borderRadius: BorderRadius.circular(30.0)),
  //   // focusedBorder: OutlineInputBorder(
  //   //   borderSide: BorderSide(
  //   //     color: Color(0xFFF05A22),
  //   //   ),
  //   //   borderRadius: BorderRadius.circular(30.0),
  //   // ),
  //   errorBorder: OutlineInputBorder(
  //       borderSide: BorderSide(
  //         color: Color(0xFFCE020D),
  //       ),
  //       borderRadius: BorderRadius.circular(30.0)),
  //   focusedErrorBorder: OutlineInputBorder(
  //     borderSide: BorderSide(
  //       color: Color(0xFFCE020D),
  //     ),
  //     borderRadius: BorderRadius.circular(30.0),
  //   ),
  // ),
);
