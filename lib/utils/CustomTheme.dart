import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xff52914c);
const ScreenBgColor = const Color(0xffF5F5F5);

ThemeData getThemeApp(){
  return ThemeData(
    primaryColor: PrimaryColor,
    appBarTheme: getThemeAppBar(),
    scaffoldBackgroundColor: ScreenBgColor,
    canvasColor: PrimaryColor,
    textTheme: getTextThemeGlobal(),
    cardTheme: getCardTheme()
  );
}

TextTheme getTextThemeGlobal(){
  return TextTheme(
   // body1:  TextStyle(fontFamily: 'Boonbaan', fontSize: 14, color: Colors.grey[200]),
   // title: TextStyle(fontFamily: 'Boonbaan', fontSize: 14, color: Colors.grey[200])
  );
}
CardTheme getCardTheme(){
  return CardTheme(
    color: Colors.white,
    elevation: 4.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
  );
}

AppBarTheme getThemeAppBar(){
  return AppBarTheme(
    color: PrimaryColor,
    brightness: Brightness.dark,
    textTheme: TextTheme(title: TextStyle(fontFamily: 'Boonbaan', fontWeight: FontWeight.bold, fontSize: 18))
  );
}

