class Person {
  final String fname;
  final String lname;
  final int age;

  Person({required this.fname,required this.lname, required this.age});

  //copywith function

  Person copywith({String? fname, String? lname, int? age}){
    return Person(
      fname: fname ?? this.fname,
      lname: lname ?? this.lname,
      age: age ?? this.age,
    );
  }

  @override
  String toString(){
    return "fname: $fname, lname: $lname, age:$age";
  }
}

void main(){
  Person p1 = Person(fname: "Ayush", lname: "Rasailee", age: 20);
  Person p2 = p1.copywith(fname: "asd");
  print(p2);
  Person p3 = p2.copywith(age: 26);  
  print(p3);

}