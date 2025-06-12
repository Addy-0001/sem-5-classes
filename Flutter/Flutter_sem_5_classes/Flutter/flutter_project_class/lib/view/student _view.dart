// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_project_class/model/student_model.dart';
import 'package:flutter_project_class/view/output_view.dart';

class StudentView extends StatefulWidget {
  const StudentView({super.key});

  @override
  State<StudentView> createState() => _StudentViewState();
}

class _StudentViewState extends State<StudentView> {
  final lstCity = ["Kathmandu", "Bhaktapur", "Lalitpur", "Pokhara"];

  final  lstStudent = <StudentModel>[];
  final fnameController = TextEditingController();
  final lnameController = TextEditingController();

  String? selectedCity;

  final _formKey = GlobalKey<FormState>();

  _showAlertDialog(BuildContext context, StudentModel student){
    AlertDialog alert = AlertDialog(
      title: const Text("Delete?"),
      content: Text('Are you sure you want to delete $student.frame ?? '),
      actions: [
        TextButton(
          child: const Text('No'), 
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        TextButton(
          child: const Text('Yes'), 
          onPressed: (){
            setState(() {
              lstStudent.remove(student);
            });
            Navigator.pop(context);
          },
        )
      ],
    );

    showDialog(
      context: context, 
      builder: (BuildContext context){
        return alert;
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Student View"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: fnameController,
                decoration: const InputDecoration(
                  labelText: "First Name",
                  hintText: "Enter your first name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your first name";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: lnameController,
                decoration: const InputDecoration(
                  labelText: "Last Name",
                  hintText: "Enter your last name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your last name";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: "Select City",
                  hintText: "Select your city",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
                value: selectedCity,
                items:
                    lstCity.map((city) {
                      return DropdownMenuItem(value: city, child: Text(city));
                    }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCity = value;
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return "Please select your city";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[100],
                  padding: const EdgeInsets.all(15),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    lstStudent.add(StudentModel(fname: fnameController.text, lname: lnameController.text, city: selectedCity!,)
                      );
                    setState(() {});
                    // fnameController.clear();
                    // lnameController.clear();
                    // setState(() {
                    //   selectedCity = null;
                    // });
                  }
                },
                child: const Text("Submit"),
              ),
              const SizedBox(height: 10),
              lstCity.isEmpty
                  ? const Text("No data found")
                  : Expanded(
                    child: ListView.builder(
                      itemCount: lstStudent.length,
                      itemBuilder: (context, index) {
                        var current = lstStudent[index];
                        return ListTile(
                          title: Text(
                            "${current.fname} ${current.lname}",
                          ),
                          subtitle: Text(current.city),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              var curr = current;
                              _showAlertDialog(context, curr);
                            },
                          ),
                          onTap: (){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder:
                                (context) => OutputView(studentModel: current)
                              )
                            );
                          },
                        );
                      },
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}