class Student {
  String name;
  int roll;
  List<int> marks;
  Student(this.name, this.roll, this.marks);

  int totalMarks(){
    return marks.reduce((int a, int b) => a + b);
  }

  double average(){
    return totalMarks()/(marks.length);
  }

  void checkFailorPass(){
    if (totalMarks() < 40){
      print("$name has failed");
    }
  }

}
void main(){
  Student student = Student("John", 1, [90, 80, 70]);
  print(student);
}