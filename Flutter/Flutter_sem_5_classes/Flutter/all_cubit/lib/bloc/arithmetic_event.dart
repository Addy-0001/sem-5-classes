import 'package:flutter/material.dart';

@immutable
sealed class ArithmeticEvent {}

class IncrementEvent extends ArithmeticEvent{
  final int first;
  final int second;

  IncrementEvent(this.first, this.second);
}

class DecrementEvent extends ArithmeticEvent{
  final int first;
  final int second;

  DecrementEvent(this.first, this.second);
}

class MultiEvent extends ArithmeticEvent{
  final int first;
  final int second;

  MultiEvent(this.first, this.second);
}

