import 'package:flutter/material.dart';
import '../../models/form_data.dart'; // Import your FormData model

class DetailView extends StatelessWidget {
  final FormData employee;

  const DetailView({super.key, required this.employee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Employee Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'First Name: ${employee.firstName}',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Last Name: ${employee.lastName}',
              style: TextStyle(fontSize: 18),
            ),
            Text('Email: ${employee.email}', style: TextStyle(fontSize: 18)),
            Text('Phone: ${employee.phone}', style: TextStyle(fontSize: 18)),
            Text('City: ${employee.city}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
