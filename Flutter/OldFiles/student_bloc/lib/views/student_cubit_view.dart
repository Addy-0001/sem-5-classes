import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_bloc/cubit/student_cubit.dart';
import 'package:student_bloc/models/student_model.dart';
import 'package:student_bloc/state/student_state.dart';

class StudentCubitView extends StatelessWidget {
  StudentCubitView({super.key});

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _addressController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student App")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  TextFormField(controller: _nameController),
                  TextFormField(controller: _ageController),
                  TextFormField(controller: _addressController),
                  ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        StudentModel student = StudentModel(
                          name: _nameController.text,
                          age: int.parse(_ageController.text),
                          address: _addressController.text,
                        );

                        context.read<StudentCubit>().addStudent(student);
                        _nameController.clear();
                        _ageController.clear();
                        _addressController.clear();
                      }
                    },
                    child: Text("Add"),
                  ),
                ],
              ),
            ),
          ),

          BlocBuilder<StudentCubit, StudentState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const CircularProgressIndicator();
              } else if (state.lstStudents.isEmpty) {
                return const Text("No Students added yet");
              } else {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.lstStudents.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(state.lstStudents[index].name),
                      subtitle: Text(state.lstStudents[index].age.toString()),
                      trailing: IconButton(
                        onPressed: () {
                          context.read<StudentCubit>().deleteStudent(index);
                        },
                        icon: Icon(Icons.delete),
                      ),
                    );
                  },
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
