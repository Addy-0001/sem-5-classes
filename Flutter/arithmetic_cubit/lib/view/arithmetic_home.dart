import 'package:flutter/material.dart';

class ArithmeticHome extends StatelessWidget {
  ArithmeticHome({super.key});

  final firstNumberController = TextEditingController();
  final secondNumberController = TextEditingController();

  final Key myKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Arithmetic Cubit App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(
              key: myKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: firstNumberController,
                      validator: (value) {
                        if (value!.isEmpty) return "Can't be empty";
                        return null;
                      },
                      decoration: InputDecoration(label: Text("First Number")),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: secondNumberController,
                      validator: (value) {
                        if (value!.isEmpty) return "Can't be empty";
                        return null;
                      },
                      decoration: InputDecoration(label: Text("Second Number")),
                    ),
                  ),

                  ElevatedButton(
                    style: ButtonStyle(),
                    onPressed: () {},
                    child: Text("Add"),
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("Subtract")),
                  ElevatedButton(onPressed: () {}, child: Text("Multiply")),

                  Text(
                    "Output",
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  ),

                  Text("state", style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
