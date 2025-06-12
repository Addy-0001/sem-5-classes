import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_management/features/course/presentation/view_model/course_event.dart';
import 'package:student_management/features/course/presentation/view_model/course_view_model.dart';
import 'package:student_management/features/course/presentation/view_model/course_state.dart';

class CourseView extends StatelessWidget {
  CourseView({super.key});

  final courseNameController = TextEditingController();
  final _courseViewFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CourseViewModel, CourseState>(
      listener: (context, state) {
        if (state.error != null && state.error!.isNotEmpty) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.error!)));
        }
      },
      builder: (context, state) {
        return SizedBox.expand(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _courseViewFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: courseNameController,
                    decoration: const InputDecoration(labelText: 'Course Name'),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter course name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: state.isLoading
                        ? null
                        : () {
                            if (_courseViewFormKey.currentState!.validate()) {
                              final courseName = courseNameController.text
                                  .trim();
                              context.read<CourseViewModel>().add(
                                AddCourseEvent(courseName),
                              );
                              courseNameController.clear(); // Optional
                            }
                          },
                    child: state.isLoading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text('Add Course'),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
