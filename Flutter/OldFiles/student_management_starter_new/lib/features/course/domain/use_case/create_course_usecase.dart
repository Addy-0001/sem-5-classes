import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:student_management/core/common/use_case/use_case.dart';
import 'package:student_management/core/error/failure.dart';
import 'package:student_management/features/course/domain/entity/course_entity.dart';
import 'package:student_management/features/course/domain/repository/course_repository.dart';

class CreateCourseParams extends Equatable {
  final String courseName;
  const CreateCourseParams({required this.courseName});

  // empty constructor
  const CreateCourseParams.empty() : courseName = '';

  @override
  List<Object?> get props => [courseName];
}

class CreateCourseUsecase
    implements UsecaseWithParams<void, CreateCourseParams> {
  final ICourseRepository courseRepository;
  CreateCourseUsecase({required this.courseRepository});

  @override
  Future<Either<Failure, dynamic>> call(CreateCourseParams params) async {
    return await courseRepository.createCourse(
      CourseEntity(courseName: params.courseName),
    );
  }
}
