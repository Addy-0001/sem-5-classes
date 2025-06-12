import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
sealed class CourseEvent extends Equatable{
  const CourseEvent();

  @override
  List<Object> get props => [];
}

final class LoadCourseEvent extends CourseEvent{

}

final class AddCourseEvent extends CourseEvent{
  final String courseName;
  const AddCourseEvent(this.courseName);

  @override
  List<Object> get props => [courseName];
}

final class DeleteCourseEvent extends CourseEvent{
  final String courseId;
  const DeleteCourseEvent(this.courseId);

  @override
  List<Object> get props => [courseId];
}