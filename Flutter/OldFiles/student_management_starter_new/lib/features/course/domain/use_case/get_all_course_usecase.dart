import 'package:dartz/dartz.dart';
import 'package:student_management/core/common/use_case/use_case.dart';
import 'package:student_management/core/error/failure.dart';
import 'package:student_management/features/course/domain/entity/course_entity.dart';
import 'package:student_management/features/course/domain/repository/course_repository.dart';

class GetAllCourseUsecase implements UsecaseWithoutParams<List<CourseEntity>> {
  final ICourseRepository courseRepository;

  GetAllCourseUsecase({required this.courseRepository});

  @override
  Future<Either<Failure, List<CourseEntity>>> call() async {
    return await courseRepository.getCourses();
  }
}
