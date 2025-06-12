import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_management/features/course/domain/use_case/create_course_usecase.dart';
import 'package:student_management/features/course/domain/use_case/delete_course_usecase.dart';
import 'package:student_management/features/course/domain/use_case/get_all_course_usecase.dart';
import 'package:student_management/features/course/presentation/view_model/course_event.dart';
import 'package:student_management/features/course/presentation/view_model/course_state.dart';

class CourseViewModel extends Bloc<CourseEvent, CourseState> {
  final GetAllCourseUsecase getAllCourseUsecase;
  final CreateCourseUsecase createCourseUsecase;
  final DeleteCourseUsecase deleteCourseUsecase;

  CourseViewModel({
    required this.getAllCourseUsecase,
    required this.createCourseUsecase,
    required this.deleteCourseUsecase,
  }) : super(CourseState.initial()) {
    on<LoadCoursesEvent>(_onLoadCourses);
    on<AddCourseEvent>(_onCreateCourse);
    on<DeleteCourseEvent>(_onDeleteCourse);

    // Load courses when the ViewModel is initialized
    add(LoadCoursesEvent());
  }

  Future<void> _onLoadCourses(
    LoadCoursesEvent event,
    Emitter<CourseState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await getAllCourseUsecase();
    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, error: failure.message)),
      (courses) => emit(state.copyWith(courses: courses, isLoading: false)),
    );
  }

  Future<void> _onCreateCourse(
    AddCourseEvent event,
    Emitter<CourseState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(seconds: 1));
    final result = await createCourseUsecase(
      CreateCourseParams(courseName: event.courseName),
    );
    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, error: failure.message)),
      (_) {
        emit(state.copyWith(isLoading: false));
        add(LoadCoursesEvent());
      },
    );
  }

  Future<void> _onDeleteCourse(
    DeleteCourseEvent event,
    Emitter<CourseState> emit, // ✅ Fixed here
  ) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(seconds: 1));
    final result = await deleteCourseUsecase.call(
      DeleteCourseParams(courseId: event.courseId),
    );
    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, error: failure.message)),
      (_) {
        emit(state.copyWith(isLoading: false));
        add(LoadCoursesEvent());
      },
    );
  }
}
