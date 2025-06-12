import 'package:flutter/material.dart';
import 'package:quote_generator/view/quote_generator.dart';

class MyApp extends StatelessWidget {
  const MyApp
({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quote Generator",
      home: QuoteView(),
      color: Colors.amber,
    );
  }
}