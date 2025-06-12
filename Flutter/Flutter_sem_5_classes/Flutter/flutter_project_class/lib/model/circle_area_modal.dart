class CircleAreaModal{
  final int radius;
  
  CircleAreaModal({required this.radius});

  double areaCircle(){
    return radius * radius * 3.14;
  }
}