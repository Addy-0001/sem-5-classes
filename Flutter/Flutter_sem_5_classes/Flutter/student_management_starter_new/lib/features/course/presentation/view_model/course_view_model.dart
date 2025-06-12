import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:student_management/features/course/domain/use_case/create_course_usecase.dart';
import 'package:student_management/features/course/domain/use_case/delete_course_usecase.dart';
import 'package:student_management/features/course/domain/use_case/getall_course_usecase.dart';
import 'package:student_management/features/course/presentation/view_model/course_event.dart';
import 'package:student_management/features/course/presentation/view_model/course_state.dart';

class CourseViewModel extends Bloc<CourseEvent,CourseState>{
  final CreateCourseUsecase _createCourseUsecase;
  final DeleteCourseUsecase _deleteCourseUsecase;
  final GetallCourseUsecase _getallCourseUsecase;

  CourseViewModel({
    required CreateCourseUsecase createBatchUseCase,
    required DeleteCourseUsecase deleteBatchUseCase,
    required GetallCourseUsecase getAllBatchUseCase,
  }) : _createCourseUsecase = createBatchUseCase,
      _deleteCourseUsecase = deleteBatchUseCase,
      _getallCourseUsecase = getAllBatchUseCase,
      super(CourseState.initial()){
        on<LoadCourseEvent>(_onLoadCourses);
        on<AddCourseEvent>(_onAddCourse);
        on<DeleteCourseEvent>(_onDeleteCourse);

        add(LoadCourseEvent());
      }

  Future<void> _onLoadCourses(
    LoadCourseEvent event,
    Emitter<CourseState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await _getallCourseUsecase();
    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, error: failure.message));
      },
      (courses) {
        emit(state.copyWith(courses: courses, isLoading: false));
      },
    );
  }

  Future<void> _onAddCourse(
    AddCourseEvent event,
    Emitter<CourseState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(seconds: 1));
    final result = await _createCourseUsecase(
      CreateCourseParam(courseName: event.courseName),
    );
    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, error: failure.message));
      },
      (_) {
        emit(state.copyWith(isLoading: false));
        add(LoadCourseEvent());
      },
    );
  }

  Future<void> _onDeleteCourse(
    DeleteCourseEvent event,
    Emitter<CourseState> emit,
  ) async {
    // Logic to delete a batch
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(seconds: 1));
    final result = await _deleteCourseUsecase.call(
      DeleteCourseParams(courseId: event.courseId)
    );
    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, error: failure.message));
      },
      (_) {
        emit(state.copyWith(isLoading: false));
        add(LoadCourseEvent());
      },
    );
  }
  
}
