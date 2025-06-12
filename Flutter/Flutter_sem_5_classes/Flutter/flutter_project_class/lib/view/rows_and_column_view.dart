import 'package:flutter/material.dart';

class RowsAndColumnView extends StatelessWidget {
  const RowsAndColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 39, 137, 218),
        title: Text('Rows and Column'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              alignment: Alignment.center,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: const Color.fromARGB(255, 86, 159, 219),
                      alignment: Alignment.center,
                      child: Text('column 1')
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Text('column 1')
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Text('column 1')
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text('Column 1'),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text('Column 2'),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text('Column 3'),
            ),
          ),
        ],
      ),
    );
  }
}