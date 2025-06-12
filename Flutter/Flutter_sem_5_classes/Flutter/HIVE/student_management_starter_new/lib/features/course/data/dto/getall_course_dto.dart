import 'package:json_annotation/json_annotation.dart';
import 'package:student_management/features/course/data/model/course_api_model.dart';

part 'getall_course_dto.g.dart';

@JsonSerializable()

class GetallCourseDTO {
  final bool success;
  final int count;
  final List<CourseApiModel> data;

  GetallCourseDTO({
    required this.success,
    required this.count,
    required this.data
  });

  Map<String, dynamic> toJson() => _$GetallCourseDTOToJson(this);

  factory GetallCourseDTO.fromJson(Map<String, dynamic> json) => _$GetallCourseDTOFromJson(json);
}