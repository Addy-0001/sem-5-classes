import 'package:equatable/equatable.dart';

class SimpleInterestModel extends Equatable {
  final double principal;
  final double time;
  final double rate;

  const SimpleInterestModel({
    required this.principal,
    required this.time,
    required this.rate,
  });

  @override
  List<Object> get props => [principal, time, rate];
}