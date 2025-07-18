import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:student_management/features/course/domain/entity/course_entity.dart';

@JsonSerializable()
class CourseApiModel extends Equatable {
  @JsonKey(name: '_id')
  final String? courseId;
  final String courseName;

  const CourseApiModel({this.courseId, required this.courseName});

  const CourseApiModel.empty() : courseId = '', courseName = '';

  //From JSON, write full code without generator
  factory CourseApiModel.fromJson(Map<String, dynamic> json) {
    return CourseApiModel(
      courseId: json['_id'],
      courseName: json['courseName'],
    );
  }

  //To JSON
  Map<String, dynamic> toJson() {
    return {'_id': courseId, 'courseName': courseName};
  }

  //Convert Entity to APi
  static CourseApiModel fromEntity(CourseEntity entity) =>
      CourseApiModel(courseName: entity.courseName);

  //Convert API object to API
  CourseEntity toEntity() =>
      CourseEntity(courseId: courseId, courseName: courseName);

  //Convert API List to Entity List
  static List<CourseEntity> toEntityList(List<CourseApiModel> model) =>
      model.map((model) => model.toEntity()).toList();

  @override
  List<Object?> get props => throw UnimplementedError();
}
