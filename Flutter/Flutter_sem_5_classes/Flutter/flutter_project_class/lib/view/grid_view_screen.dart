import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(8),
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: [
            for(int i = 1; i<=10;i++)...{
              SizedBox(
                child: ElevatedButton(onPressed: (){}, 
                  child: Text('$i', style: const TextStyle(fontSize: 50))),
              )
            }
          ],
        ),
      ),
    );
  }
}