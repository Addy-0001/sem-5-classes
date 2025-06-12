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
        appBar: AppBar(title: Text("This is my app bar"),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 0,),
        body: Column(
          children: [
            SizedBox(height: 10,),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your number',
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your number',
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){}, child: Text("Add")),
            ),
            Text("Result: 0")
          ],
        )
      );
  }
}