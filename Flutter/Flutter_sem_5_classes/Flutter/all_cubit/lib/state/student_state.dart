import 'package:all_cubit/model/student_model.dart';

class StudentState {
  final List<StudentModel> lstStudent;
  final bool isLoading;

  const StudentState({required this.lstStudent, required this.isLoading});

  factory StudentState.initial(){
    return StudentState(lstStudent: [], isLoading: false);
  }

  StudentState copyWith({
    List<StudentModel>? lstStudent,
    bool? isLoading,
  }){
    return StudentState(
      lstStudent: lstStudent ?? this.lstStudent,
      isLoading: isLoading ?? this.isLoading);
  }
}