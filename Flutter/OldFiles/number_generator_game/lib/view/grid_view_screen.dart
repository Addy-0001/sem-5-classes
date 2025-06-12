import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View Screen")),
      body: GridView.count(
        padding: EdgeInsets.all(8),
        physics: BouncingScrollPhysics(),
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: [
          for (int i = 0; i < 10; i++)
            ElevatedButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.resolveWith(
                  (x) => RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              onPressed: DoNothingAction.new,
              child: Text("Button ${i + 1}"),
            ),
        ],
      ),
    );
  }
}
