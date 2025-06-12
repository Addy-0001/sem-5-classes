import 'package:flutter/material.dart';
import 'package:flutter_project_class/model/circle_area_modal.dart';

class Circle extends StatefulWidget {
  const Circle({super.key});

  @override
  State<Circle> createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  double result = 0.0;
  int r = 0;

  late CircleAreaModal modal;

  void calculateArea(value) {
    setState(() {
      result = r * r * 3.14;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 126, 145, 231),
        title: Text("Area of A Circle"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 8),
          SizedBox(height: 8),

          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Enter the radius of the circle",
            ),
            onChanged: (value) => {r = int.parse(value)},
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 187, 216, 240)
            ),
            onPressed: () {
              modal = CircleAreaModal(radius: r);
              result = modal.areaCircle();
            },
            child: Text("Calculate",),
          ),

          Text("Result : $result", style: TextStyle(fontSize: 30),),
        ],
      ),
    );
  }
}