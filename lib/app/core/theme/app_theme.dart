import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';

final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: kScaffoldBackroundColor,
  secondaryHeaderColor: kMainTextColor,
  primaryColor: kMainColor,
  primaryColorDark: kMainColorDark,
  primaryColorLight: kMainColorLight,
  bottomAppBarColor: kWhiteColor,
  dividerColor: const Color(0xFFD4D4D4),
  disabledColor: kDisabledColor,
  errorColor: const Color(0xFFb11116),
  cardColor: kCardBackgroundColor,
  hintColor: kLightTextColor,
  indicatorColor: kMainColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: kMainColor,
      textStyle: TextStyle(
        fontSize: 16,
        color: kMainTextColor,
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(
      fontSize: 13,
      color: const Color(0xffa0a0a0),
    ),
    labelStyle: TextStyle(
      fontSize: 13,
      color: const Color(0xffa0a0a0),
    ),
    alignLabelWithHint: true,
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: kMainColor,
      ),
    ),
    border: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffa0a0a0),
      ),
    ),
  ),
  tabBarTheme: TabBarTheme(
      labelStyle: TextStyle(
          fontSize: 16, color: kMainTextColor, fontWeight: FontWeight.bold),
      unselectedLabelStyle: TextStyle(
        fontSize: 16,
        color: kMainTextColor,
      )),
  appBarTheme: AppBarTheme(
    backgroundColor: kScaffoldBackroundColor,
    elevation: 2,
    centerTitle: true,
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
    toolbarTextStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18.3,
      color: kMainTextColor,
      fontFamily: 'Myriad Arabic',
    ),
    iconTheme: IconThemeData(color: kMainTextColor),
  ),
  iconTheme: IconThemeData(color: kMainTextColor),
  primaryIconTheme: IconThemeData(color: kMainTextColor),
  colorScheme: ColorScheme.light(primary: kMainColor),
  textSelectionTheme: const TextSelectionThemeData(cursorColor: kMainColor),
);

final ThemeData appDarkTheme = ThemeData(
  scaffoldBackgroundColor: kScaffoldDarkBackroundColor,
  secondaryHeaderColor: kMainTextColor,
  primaryColor: kMainColor,
  primaryColorDark: kMainColorDark,
  primaryColorLight: kMainColorLight,
  cardColor: kCardBackgroundDarkColor,
  dividerColor: const Color(0xFFD4D4D4),
  errorColor: const Color(0xFFb11116),
  textButtonTheme: TextButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: TextStyle(color: kWhiteColor),
      primary: kWhiteColor,
    ),
  ),
  indicatorColor: kMainColor,
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(
      fontSize: 13,
    ),
    labelStyle: TextStyle(
      fontSize: 13,
    ),
    alignLabelWithHint: true,
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffa0a0a0),
      ),
    ),
    border: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xffa0a0a0),
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: kMainColor,
      textStyle: TextStyle(
        fontSize: 16,
        color: kWhiteColor,
      ),
    ),
  ),
  tabBarTheme: TabBarTheme(
      labelStyle: TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
      unselectedLabelStyle: TextStyle(
        fontSize: 16,
        color: Colors.white,
      )),
  appBarTheme: AppBarTheme(
    backgroundColor: kScaffoldDarkBackroundColor,
    elevation: 0.0,
    centerTitle: true,
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
    toolbarTextStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18.3,
      color: Colors.white,
      fontFamily: 'Myriad Arabic',
    ),
    iconTheme: IconThemeData(color: Colors.white),
  ),
  colorScheme: ColorScheme.dark(primary: kMainColor),
  iconTheme: IconThemeData(color: Colors.white),
  primaryIconTheme: IconThemeData(color: Colors.white),
  textSelectionTheme: const TextSelectionThemeData(cursorColor: kMainColor),
);
