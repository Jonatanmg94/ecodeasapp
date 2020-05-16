import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xff52914c);
const ScreenBgColor = const Color(0xffF5F5F5);

ThemeData getThemeApp(){
  return ThemeData(
    primaryColor: PrimaryColor,
    appBarTheme: getThemeAppBar(),
    scaffoldBackgroundColor: ScreenBgColor,
    canvasColor: PrimaryColor,
    textTheme: getTextThemeGlobal()
  );
}

TextTheme getTextThemeGlobal(){
  return TextTheme(
    
  );
}

AppBarTheme getThemeAppBar(){
  return AppBarTheme(
    color: PrimaryColor,
    brightness: Brightness.dark,
    textTheme: TextTheme(title: TextStyle(fontFamily: 'LEMONMILK', fontWeight: FontWeight.bold))
  );
}

