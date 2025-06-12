import 'package:flutter/material.dart';
import 'package:flutter_project_class/model/palindrome_modal.dart';

class PalindromeNumber extends StatefulWidget {
  const PalindromeNumber({super.key});

  @override
  State<PalindromeNumber> createState() => _PalindromeNumberState();
}

class _PalindromeNumberState extends State<PalindromeNumber> {
  bool result = false;
  int number = 0;

  //function to check if it is palindrome or not
  late PalindromeModal modal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Palindrome Number"),
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
              labelText: "Enter any number to check for Palindrome",
            ),
            onChanged: (value) => {number = int.parse(value)},
          ),
          SizedBox(height: 8),
          SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              modal = PalindromeModal(value: number);
              
            },
            child: Text("Check if palindrome or not"),
          ),

          Text("Result : $result",style: TextStyle(fontSize: 30),),
        ],
      ),
    );
  }
}