import 'package:employee/models/form_data.dart';
import 'package:flutter/material.dart';
import 'detail_view.dart'; // Import the DetailView

class ListEmployeeView extends StatelessWidget {
  final List<FormData> employeeList;

  const ListEmployeeView({super.key, required this.employeeList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Employee List')),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(label: Text('First Name')),
                DataColumn(label: Text('Last Name')),
                DataColumn(label: Text('Email')),
                DataColumn(label: Text('Phone')),
                DataColumn(label: Text('City')),
              ],
              rows:
                  employeeList.map((employee) {
                    return DataRow(
                      onSelectChanged: (selected) {
                        // Navigate to the DetailView and pass the selected employee data
                        if (selected != null && selected) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => DetailView(employee: employee),
                            ),
                          );
                        }
                      },
                      cells: [
                        DataCell(Text(employee.firstName)),
                        DataCell(Text(employee.lastName)),
                        DataCell(Text(employee.email)),
                        DataCell(Text(employee.phone)),
                        DataCell(Text(employee.city)),
                      ],
                    );
                  }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
