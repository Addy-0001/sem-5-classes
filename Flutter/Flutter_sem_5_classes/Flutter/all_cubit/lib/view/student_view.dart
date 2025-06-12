
import 'package:all_cubit/cubit/student_cubit.dart';
import 'package:all_cubit/model/student_model.dart';
import 'package:all_cubit/state/student_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StudentView extends StatelessWidget {
  StudentView({super.key});

  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _addressController = TextEditingController();


  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Cubit'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Enter Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )
                ),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                controller: _ageController,
                decoration: InputDecoration(
                  labelText: "Age",
                  hintText: "Enter Age",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )
                ),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(
                  labelText: "Address",
                  hintText: "Enter Address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )
                ),
              ),
              SizedBox(height: 8.0),
              
              SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: (){
                  if(formKey.currentState!.validate()){
                    StudentModel student = StudentModel(
                      name: _nameController.text, 
                      age: int.parse(_ageController.text), 
                      address: _addressController.text
                    );
                    context.read<StudentCubit>().addStudent(student);
                    _nameController.clear();
                    _ageController.clear();
                    _addressController.clear();
                  }
                }, 
                child: Text('Submit')
              ),
              BlocBuilder<StudentCubit, StudentState>(
                builder: (context, state){
                  if(state.isLoading){
                    return const CircularProgressIndicator();
                  } else if(state.lstStudent.isEmpty){
                    return const Text('No students added yet');
                  }else{
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.lstStudent.length,
                      itemBuilder: (context, index){
                        return ListTile(
                          title: Text(state.lstStudent[index].name),
                          subtitle: Text(state.lstStudent[index].age.toString()),
                          trailing: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: (){
                              context.read<StudentCubit>().deleteStudent(index);
                            },
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}