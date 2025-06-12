import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    useMaterial3: false,
    primarySwatch: Colors.amber,
    scaffoldBackgroundColor: Colors.blueGrey[100],
    primaryColor: Colors.amber,
    fontFamily: "OpenSans Regular",
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: Colors.amber,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      ),
    ),

    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: Color(0xFF11235A),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontFamily: "Poppins Bold",
        fontSize: 30,
      ),
      elevation: 5,
    ),
  );
}
