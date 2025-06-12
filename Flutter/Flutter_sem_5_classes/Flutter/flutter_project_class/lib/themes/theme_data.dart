import 'package:flutter/material.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
    useMaterial3: false,
    primarySwatch: Colors.deepOrange,
    scaffoldBackgroundColor: Colors.green,
    fontFamily: 'Opensans Regular',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        )
      )
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: Color(0xFF11235A),
      elevation: 5,
      shadowColor: Colors.black,
      titleTextStyle: TextStyle(
        fontSize: 16,

      )
    ) 
  );
}