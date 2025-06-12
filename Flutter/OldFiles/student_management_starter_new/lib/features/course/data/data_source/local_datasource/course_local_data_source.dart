import 'package:student_management/core/network/hive_service.dart';
import 'package:student_management/features/course/data/data_source/course_data_source.dart';
import 'package:student_management/features/course/data/model/course_hive_model.dart';
import 'package:student_management/features/course/domain/entity/course_entity.dart';

class CourseLocalDataSource implements ICourseDataSource {
  final HiveService _hiveService;
  CourseLocalDataSource(this._hiveService);

  @override
  Future<void> createCourse(CourseEntity courseEntity) async {
    try {
      final courseHiveModel = CourseHiveModel.fromEntity(courseEntity);
      await _hiveService.addCourse(courseHiveModel);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> deleteCourse(String id) async {
    try {
      await _hiveService.deleteCourse(id);
    } catch (e) {
      Exception(e);
    }
  }

  @override
  Future<List<CourseEntity>> getCourses() async {
    try {
      final courses = await _hiveService.getCourses();
      return CourseHiveModel.toEntityList(courses);
    } catch (e) {
      throw Exception('Failed to get batches: $e');
    }
  }
}
