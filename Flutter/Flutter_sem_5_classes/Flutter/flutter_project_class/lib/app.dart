import 'package:flutter/material.dart';
import 'package:flutter_project_class/themes/theme_data.dart';
import 'package:flutter_project_class/view/add.dart';
import 'package:flutter_project_class/view/calculator_view.dart';
import 'package:flutter_project_class/view/card_view.dart';
import 'package:flutter_project_class/view/circle.dart';
import 'package:flutter_project_class/view/column_view.dart';
import 'package:flutter_project_class/view/column_view_2.dart';
import 'package:flutter_project_class/view/container_view.dart';
import 'package:flutter_project_class/view/first_view.dart';
import 'package:flutter_project_class/view/flexible_expanded_view.dart';
import 'package:flutter_project_class/view/grid_view_screen.dart';
import 'package:flutter_project_class/view/interest.dart';
import 'package:flutter_project_class/view/load_image_view.dart';
import 'package:flutter_project_class/view/media_query_view.dart';
import 'package:flutter_project_class/view/palindrome.dart';
import 'package:flutter_project_class/view/rows_and_column_view.dart';
import 'package:flutter_project_class/view/student%20_view.dart';
import 'package:flutter_project_class/view/time.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First Task",
      home: FirstView(),
      theme: getApplicationTheme(),
      routes: {
        '/add' : (context) => const AddNumbers(),
        '/circle':(context) => Circle(),
        '/interest':(context) => SimpleInterest(),
        '/palindrome':(context) => PalindromeNumber(),
        '/column' : (context) => ColumnView(),
        '/columntwo' : (context) => ColumnViewTwo(),
        '/container' : (context) => ContainerView(),
        '/loadimage' : (context) => LoadImageView(),
        '/media' : (context) => MediaQueryView(),
        '/flexible' : (context) => FlexibleExpandedView(),
        '/rowsandcolumn' : (context) => RowsAndColumnView(),
        '/student' : (context) => StudentView(),
        '/card' : (context) => CardView(),
        '/grid' : (context) => GridViewScreen(),
        '/calc' : (context) => CalculatorView(),
        '/time' : (context) => TimeView(),
      },
    );
  }
}