import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column View part"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: const [
            Icon(Icons.star, size: 50,),
            Spacer(),
            Icon(Icons.star, size: 50,),
            Icon(Icons.star, size: 50,),

          ],
        ),
      ),
    );
  }
}