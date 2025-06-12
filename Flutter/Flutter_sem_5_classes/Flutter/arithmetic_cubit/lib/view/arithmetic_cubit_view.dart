import 'package:arithmetic_cubit/cubit/arithmetic_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticCubitView extends StatelessWidget {
  ArithmeticCubitView({super.key});

  final firstNumberController = TextEditingController();
  final secondNumberController = TextEditingController();

  final Key mykey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arithmetic Cubit'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: mykey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: firstNumberController,
                decoration: InputDecoration(
                  labelText: "First Number",
                  hintText: "Enter First Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.greenAccent)
                  ),
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Please enter first number";
                  }
                  return null;
                },
              ),
              SizedBox(height: 8.0,),
              TextFormField(
                controller: secondNumberController,
                decoration: InputDecoration(
                  labelText: "Second Number",
                  hintText: "Enter Second Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.greenAccent)
                  ),
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return "Please enter second number";
                  }
                  return null;
                },
              ),
              SizedBox(height: 8.0,),
              Row(
                children: [
                  Text(
                    'Output: ',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(width: 5,),
                  BlocBuilder<ArithmeticCubit, int> (
                    builder: (context, state){
                      return Text(
                        '$state',
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                      );
                    },
                  )
                ],
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){
                  context.read<ArithmeticCubit>().add(int.parse(firstNumberController.text), int.parse(secondNumberController.text));
                }, 
                child: Text(
                  'Add',
                )
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){
                  context.read<ArithmeticCubit>().sub(int.parse(firstNumberController.text), int.parse(secondNumberController.text));
                }, 
                child: Text(
                  'Substract',
                )
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){
                  context.read<ArithmeticCubit>().mul(int.parse(firstNumberController.text), int.parse(secondNumberController.text));
                }, 
                child: Text(
                  'Multiply',
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}