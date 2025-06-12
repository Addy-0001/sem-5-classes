import 'package:flutter/material.dart';
import '../../models/form_data.dart';

// Define the global list to store form data
List<FormData> formDataList = [];

class FormView extends StatefulWidget {
  final Function(FormData) onFormSubmit; // Callback for form submission

  const FormView({super.key, required this.onFormSubmit});

  @override
  // ignore: library_private_types_in_public_api
  _FormViewState createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  String? _selectedCity;

  final List<String> _cities = [
    'Kathmandu',
    'Pokhara',
    'Lalitpur',
    'Butwal',
    'Chitwan',
  ];

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      final formData = FormData(
        firstName: _firstNameController.text,
        lastName: _lastNameController.text,
        email: _emailController.text,
        phone: _phoneController.text,
        city: _selectedCity ?? '',
      );

      widget.onFormSubmit(formData); // Send data back to HomeView

      setState(() {
        formDataList.add(formData); // Add data to global list
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Form submitted successfully')),
      );

      // Clear form fields
      _firstNameController.clear();
      _lastNameController.clear();
      _emailController.clear();
      _phoneController.clear();
      setState(() {
        _selectedCity = null;
      });
    }
  }

  bool validateEmailAddress(String input) {
    RegExp regex = RegExp(
      r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+',
      caseSensitive: false,
    );

    return regex.hasMatch(input);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Employee Form Page')),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  controller: _firstNameController,
                  decoration: const InputDecoration(labelText: 'First Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your first name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _lastNameController,
                  decoration: const InputDecoration(labelText: 'Last Name'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your last name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (validateEmailAddress(value)) {
                      return null;
                    } else {
                      return 'Invalid Email Address';
                    }
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: _phoneController,
                  decoration: const InputDecoration(labelText: 'Phone Number'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your phone number';
                    } else if (value.length > 10) {
                      return "Phone Number can't be longer than 10 digits";
                    } else {
                      if (validateEmailAddress(value)) {
                        return "Invalid Phone Number";
                      }
                      return null;
                    }
                  },
                ),
                DropdownButtonFormField<String>(
                  value: _selectedCity,
                  decoration: const InputDecoration(labelText: 'City'),
                  items:
                      _cities.map((city) {
                        return DropdownMenuItem(value: city, child: Text(city));
                      }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      _selectedCity = newValue;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select a city';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: _submitForm,
                    child: const Text(
                      style: TextStyle(fontFamily: "OpenSans Bold"),
                      'Submit',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
