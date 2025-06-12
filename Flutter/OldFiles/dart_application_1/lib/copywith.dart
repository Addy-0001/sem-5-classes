class Person {
  final String fname;
  final String lname;
  final int age;

  Person({required this.fname, required this.lname, required this.age});

  // Copy With
  Person copyWith({String? fname, String? lname, int? age}) {
    return Person(
      fname: fname ?? this.fname,
      lname: lname ?? this.lname,
      age: age ?? this.age,
    );
  }

  @override
  String toString() {
    return "fname: $fname, lname: $lname, age: $age";
  }
}

void main() {
  Person p1 = Person(fname: "Kiran", lname: "Rana", age: 44);
  Person p2 = p1.copyWith(fname: "asd");
  print(p1);
  print(p2);
}
