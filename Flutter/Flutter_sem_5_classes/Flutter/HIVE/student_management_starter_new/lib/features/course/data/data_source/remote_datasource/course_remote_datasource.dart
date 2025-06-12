import 'package:dio/dio.dart';
import 'package:student_management/app/constant/api_constant.dart';
import 'package:student_management/core/network/api_service.dart';
import 'package:student_management/features/course/data/data_source/course_data_source.dart';
import 'package:student_management/features/course/data/dto/getall_course_dto.dart';
import 'package:student_management/features/course/data/model/course_api_model.dart';
import 'package:student_management/features/course/domain/entity/course_entity.dart';

class CourseRemoteDatasource implements ICourseDataSource {
  final ApiService _apiService;

  CourseRemoteDatasource({required ApiService apiService})
    : _apiService = apiService;

  @override
  Future<void> createCourse(CourseEntity course) async {
    try {
      final batchApiModel = CourseApiModel.fromEntity(course);

      var response = await _apiService.dio.post(
        ApiEndpoints.createBatch,
        data: batchApiModel.toJson(),
      );

      if (response.statusCode == 201) {
        return;
      } else {
        // Handle unexpected status codes
        throw Exception('Failed to add course: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      // Handle DioException
      throw Exception('Failed to add course: ${e.message}');
    } catch (e) {
      // Handle other exceptions
      throw Exception('An unexpected error occurred: $e');
    }
  }

  @override
  Future<void> deleteCourse(String courseId) async {
    try {
      var response = await _apiService.dio.delete(
        '${ApiEndpoints.deleteBatch}/$courseId',
      );

      if (response.statusCode == 200) {
        return;
      } else {
        // Handle unexpected status codes
        throw Exception('Failed to delete course: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      // Handle DioException
      throw Exception('Failed to delete course: ${e.message}');
    } catch (e) {
      // Handle other exceptions
      throw Exception('An unexpected error occurred: $e');
    }
  }

  @override
  Future<List<CourseEntity>> getCourses() async {
    try {
      final response = await _apiService.dio.get(ApiEndpoints.getAllCourse);
      if (response.statusCode == 200) {
        GetallCourseDTO getAllCourseDTO = GetallCourseDTO.fromJson(
          response.data,
        );
        return CourseApiModel.toEntityList(getAllCourseDTO.data);
      } else {
        // Handle unexpected status codes
        throw Exception('Failed to fetch course: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      // Handle DioException
      throw Exception('Failed to fetch course: ${e.message}');
    } catch (e) {
      // Handle other exceptions
      throw Exception('An unexpected error occurred: $e');
    }
  }
}
