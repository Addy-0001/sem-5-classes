import 'package:employee/views/date_time_view.dart';
import 'package:employee/views/form_view.dart';
import 'package:employee/views/list_employee_view.dart';
import 'package:flutter/material.dart';
import 'package:employee/models/form_data.dart'; // import form_data model

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  // This list will hold the form data
  List<FormData> formDataList = [];

  final List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    // Add pages dynamically based on the employee list
    _pages.add(
      FormView(
        onFormSubmit: (formData) {
          setState(() {
            formDataList.add(formData); // Add new form data to list
          });
        },
      ),
    );
    _pages.add(ListEmployeeView(employeeList: formDataList));
    _pages.add(DateTimeView());
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.pages), label: "Form"),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "List Employees",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_clock),
            label: "DateTime",
          ),
        ],
      ),
    );
  }
}
