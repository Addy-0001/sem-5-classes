import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:student_management/core/common/usecase.dart';
import 'package:student_management/core/error/failure.dart';
import 'package:student_management/features/course/domain/entity/course_entity.dart';
import 'package:student_management/features/course/domain/repository/course_repository.dart';

class CreateCourseParam extends Equatable{
  final String courseName;

  const CreateCourseParam({required this.courseName});

  const CreateCourseParam.empty() : courseName = "_empty.string";

  @override
  List<Object?> get props => [courseName];

}

class CreateCourseUsecase implements UsecaseWithParams<void, CreateCourseParam>{
  final ICourseRepository courseRepository;

  CreateCourseUsecase({required this.courseRepository});

  @override
  Future<Either<Failure, void>> call(CreateCourseParam params) {
    return courseRepository.createCourse(
      CourseEntity(courseName: params.courseName)
    );
  }

}