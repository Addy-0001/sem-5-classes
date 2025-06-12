import 'package:flutter/material.dart';

class ColumnViewTwo extends StatelessWidget {
  const ColumnViewTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("column view 2"),
        backgroundColor: const Color.fromRGBO(194, 105, 253, 1),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.amber,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: const Text('Button 1')),
            ElevatedButton(onPressed: (){}, child: const Text('Button 2')),
            ElevatedButton(onPressed: (){}, child: const Text('Button 3')),
          ],
        ),
      ),
    );
  }
}