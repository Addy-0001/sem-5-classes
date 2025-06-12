import 'package:equatable/equatable.dart';

class StudentModel extends Equatable{
  final String name;
  final int age;
  final String address;

  const StudentModel({required this.name, required this.age, required this.address});

  // ignore: empty_constructor_bodies
  @override
  List<Object?> get props => [
    name,
    age,
    address,
  ];
}