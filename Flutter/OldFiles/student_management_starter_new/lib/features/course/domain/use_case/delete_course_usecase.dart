import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:student_management/core/common/use_case/use_case.dart';
import 'package:student_management/core/error/failure.dart';
import 'package:student_management/features/course/domain/repository/course_repository.dart';

class DeleteCourseParams extends Equatable {
  final String courseId;
  const DeleteCourseParams({required this.courseId});

  // empty constructor
  const DeleteCourseParams.empty() : courseId = "";

  @override
  List<Object?> get props => [courseId];
}

class DeleteCourseUsecase
    implements UsecaseWithParams<void, DeleteCourseParams> {
  final ICourseRepository courseRepository;

  DeleteCourseUsecase({required this.courseRepository});
  @override
  Future<Either<Failure, void>> call(DeleteCourseParams params) async {
    return await courseRepository.deleteCourse(params.courseId);
  }
}
