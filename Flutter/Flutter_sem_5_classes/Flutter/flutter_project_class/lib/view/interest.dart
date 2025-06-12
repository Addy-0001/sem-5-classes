import 'package:flutter/material.dart';
import 'package:flutter_project_class/model/simple_interest_modal.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  int p = 0;
  int t = 0;
  int r = 0;

  double result = 0;

  //calculation function
  late SimpleInterestModal modal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
        backgroundColor: const Color.fromARGB(255, 255, 113, 113),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 8),
          SizedBox(height: 8),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Enter the Principal amt",
              border: OutlineInputBorder()

            ),
            onChanged: (value) => {
              p = int.parse(value)
            },
          ),
          SizedBox(height: 8),
          SizedBox(height: 8),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Enter the Time in years",
              border: OutlineInputBorder()
            ),
            onChanged: (value) => {
              t = int.parse(value)
            },
          ),
          SizedBox(height: 8),
          SizedBox(height: 8),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Enter the Rate",
              border: OutlineInputBorder()

            ),
            onChanged: (value) => {
              r = int.parse(value)
            },
            
          ),
          SizedBox(height: 8),
          SizedBox(height: 8),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 238, 192, 192)
            ),
            onPressed: (){
              modal = SimpleInterestModal(principal: p, rate: r, time: t);
              result = modal.simpleInterest();
            }, 
            child: Text("Calculate SI")
            ),
            Text("SI = $result")
        ],
      ),
    );
  }
}