import 'package:student_bloc/models/student_model.dart';

class StudentState {
  final List<StudentModel> lstStudents;
  final bool isLoading;

  const StudentState({required this.isLoading, required this.lstStudents});

  factory StudentState.initial() {
    return StudentState(isLoading: false, lstStudents: []);
  }

  StudentState copyWith({List<StudentModel>? lstStudents, bool? isLoading}) {
    return StudentState(
      isLoading: isLoading ?? this.isLoading,
      lstStudents: lstStudents ?? this.lstStudents,
    );
  }
}
