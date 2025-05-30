import 'package:employee/themes/my_theme.dart';
import 'package:employee/views/home_view.dart';
import 'package:flutter/material.dart';
// import 'package:employee/view/main_navigation_view.dart'; // The shell widget

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Employee App',
      theme: getApplicationTheme(),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
