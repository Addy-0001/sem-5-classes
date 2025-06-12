import 'package:flutter/material.dart';

class FirstView extends StatefulWidget {
  const FirstView({super.key});

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard", style: TextStyle(fontFamily: 'Opensans Bold',fontSize: 30),)),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/add'),
            child: const Text("Add Two Numbers"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/circle'),
            child: const Text("Area of Circle"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/interest'),
            child: const Text("Simple Interest"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/palindrome'),
            child: const Text("Palindrome Number"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/column'),
            child: const Text("Column View"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/columntwo'),
            child: const Text("Column View"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/container'),
            child: const Text("Container View"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/loadimage'),
            child: const Text("Load Image view"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/media'),
            child: const Text("Media view"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/flexible'),
            child: const Text("Flexible view"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/rowsandcolumn'),
            child: const Text("Rowss and column view"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/student'),
            child: const Text("Student View"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/card'),
            child: const Text("Card View"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/grid'),
            child: const Text("Grid View"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/calc'),
            child: const Text("calculator View"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/time'),
            child: const Text("time View"),
          ),
          const SizedBox(height: 100),

          // Bottom row with icons and labels
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.call, color: Colors.black),
                    SizedBox(height: 8),
                    Text(
                      'CALL',
                      style: TextStyle(fontSize: 12, color: Colors.red),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.near_me, color: Colors.black),
                    SizedBox(height: 8),
                    Text(
                      'ROUTE',
                      style: TextStyle(fontSize: 12, color: Colors.red),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.share, color: Colors.black),
                    SizedBox(height: 8),
                    Text(
                      'SHARE',
                      style: TextStyle(fontSize: 12, color: Colors.red),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
