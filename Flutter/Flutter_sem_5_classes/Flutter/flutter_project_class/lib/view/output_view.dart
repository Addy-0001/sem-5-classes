import 'package:flutter/material.dart';
import 'package:flutter_project_class/model/student_model.dart';

class OutputView extends StatelessWidget {
  const OutputView({super.key, required this.studentModel});

  final StudentModel studentModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "First Name: ${studentModel.fname}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Last Name: ${studentModel.lname}",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "City: ${studentModel.city}",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}