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
      appBar: AppBar(
        title: const Text("FIRST VIEW"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/employee'), 
            child: Text('Emplyoee view')
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/bottom'), 
            child: Text('Bottom NAvigation view')
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/table'), 
            child: Text('table view')
          ),
        ],
      ),
    );
  }
}