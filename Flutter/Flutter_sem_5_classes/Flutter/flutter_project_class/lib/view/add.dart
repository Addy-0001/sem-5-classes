import 'package:flutter/material.dart';
import 'package:flutter_project_class/model/add_modal.dart';

class AddNumbers extends StatefulWidget {
  const AddNumbers({super.key});

  @override
  State<AddNumbers> createState() => _AddNumbersState();
}

class _AddNumbersState extends State<AddNumbers> {
  final firstController = TextEditingController();
  final secondController = TextEditingController();

  int result = 0;

  //late initialization of model
  late ArithmeticModal modal;

  //global key
  final mykey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arithmetic"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: mykey,
          child: Column(
            children: [
              SizedBox(height: 8),
              SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter first no",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty){
                    return "Please enter first number";
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              SizedBox(height: 8),

              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter second no",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty){
                    return "Please enter second number";
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              SizedBox(height: 8),


              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (mykey.currentState!.validate()) {
                      modal = ArithmeticModal(first: int.parse(firstController.text), second: int.parse(secondController.text));

                      result = modal.add();
                    }
                  },
                  child: Text("Add"),
                ),
              ),
              SizedBox(height: 8),

              Container(
                color: Colors.amber,
                width: double.infinity,
                child: Center(
                  child: Text("Result : $result", style: TextStyle(fontSize: 30)),
                )
              ),
              RichText(
                text: const TextSpan(
                  text: 'Hello ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                  children: <TextSpan> [
                    TextSpan(
                      text: 'bold ',
                      style: TextStyle(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                    TextSpan(
                      text: 'world! '
                    )
                  ]

                ))
            ],
          ),
        ),

      ),
    );
  }
}