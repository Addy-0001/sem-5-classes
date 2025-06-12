import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:student_management/core/common/usecase.dart';
import 'package:student_management/core/error/failure.dart';
import 'package:student_management/features/course/domain/repository/course_repository.dart';

class DeleteCourseParams extends Equatable{
  final String courseId;

  const DeleteCourseParams({required this.courseId});

  const DeleteCourseParams.empty() : courseId = "_empty.string";

  @override
  List<Object?> get props => [courseId];

}

class DeleteCourseUsecase implements UsecaseWithParams<void,DeleteCourseParams>{
  final ICourseRepository courseRepository;

  DeleteCourseUsecase({required this.courseRepository});
  
  @override
  Future<Either<Failure, void>> call(params) async{
    return await courseRepository.deleteCourse(params.courseId);
  }
}