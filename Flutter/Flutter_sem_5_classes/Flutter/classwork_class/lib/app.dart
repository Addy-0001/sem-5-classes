import 'package:classwork_class/view/bottom_screen/dashboard.dart';
import 'package:classwork_class/view/employee_list_view.dart';
import 'package:classwork_class/view/homescreen_view.dart';
import 'package:classwork_class/view/table_view/detail.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Employee",
      initialRoute: '/home',
      routes: {
        '/home': (context) => const FirstView(),
        '/employee': (context) => const EmployeeView(),
        '/bottom': (context) => const DashboardScreenView(),
        '/table': (context) => const TableView(),
      },
    );
  }
} 