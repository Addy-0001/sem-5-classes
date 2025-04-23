// void main() {
//   int i = 5;
//   if (i > 4) {
//     print('The number is greater than 4');
//   } else {
//     print('The number is smaller than 4');
//   }
//   i > 4
//       ? print('The number is greatet than 4')
//       : print('The number is smaller than 4');
//   switch (i) {
//     case 1:
//       print('sunday');
//       break;
//     case 2:
//       print('Monday');
//       break;
//     default:
//       print('not sunday or sunday');
//       break;
//   }
//   while (i > 4) {
//     print(i);
//     i = i - 1;
//   }
//   for (int j = 0; j > 5; j++) {
//     print(j);
//   }
//   String greet(String name, String title) {
//     return 'Hello $title $name!';
//   }

//   print(greet('Jane', 'Ms'));
// }

// 1
// void main() {
//   int i = 2;

//   if (i % 2 == 0) {
//     print('$i is even');
//   } else {
//     print('$i is odd');
//   }
// }

//2
// void main() {
//   String c = 'a';

//   c = c.toLowerCase();

//   if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
//     print('$c is a vowel');
//   } else {
//     print('$c is a consonant');
//   }
// }

// 3
// void main() {
//   int number = -5;
//   if (number > 0) {
//     print('$number is positive');
//   } else if (number < 0) {
//     print('$number is negative');
//   } else {
//     print('The number is zero');
//   }
// }

//4
// void main(){
//   String name= 'abhisek';

//   for(int i =1; i<100;i++){
//     print('$name');
//   }
// }

//5
// void main(){
//   int n= 10;
//   int sum=0;
//   for (int i=0; i<n;i++){
//    sum+=1;
//   }
//   print('the sum is $sum');
//   }

//6
// void main() {
//   int number = 5;

//   print("Multiplication Table of $number:");

//   for (int i = 1; i <= 10; i++) {
//     print("$number x $i = ${number * i}");
//   }
// }

//7
// void main() {

//   for (int number = 1; number <= 9; number++) {
//     print("Multiplication Table of $number:");

//     for (int i = 1; i <= 10; i++) {
//       print("$number x $i = ${number * i}");
//     }

//   }
// }

//9
// void main() {
//   for (int i = 1; i <= 100; i++) {
//     if (i == 41) {
//       continue;
//     }
//     print(i);
//   }
// }

// void main(){
//   List<String>myList=[];

//   //list operations
//   myList.forEach((item)=> print(item));
//   myList.add("New Item");
//   myList.addAll(['Item1','Item2','Item3','Item4']);
//   myList.remove('Item1');
//   myList.removeAt(0);  //remove by index
//   myList.removeWhere((item)=> item=='Item');
//   print(myList.contains('Items'));
//   print(myList.isEmpty);
//   myList.insert(1,'Inserted Item');
//   myList.clear();

//   Set<String> mySet={};

//    //Set operations
//   mySet.add('Item1');
//   mySet.addAll({'Item2','Item3'});
//   print(mySet.contains('Item1'));
//   mySet.remove('Item1');
//   mySet.clear();
//   print(mySet.isNotEmpty);
//   mySet.add('Item4');
//   mySet.add('Item5');
//   mySet.forEach((item)=> print(item));

//   Map<String, String> myMap={};

//   //Map Operations
//   myMap.forEach((key,value)=>print('$key:$value'));
//   myMap.addAll({'key1':'value1'});
//   myMap.remove('key1');
//   myMap.update('key2',(value)=>'mew value',ifAbsent:()=>'default');
//   print(myMap.containsKey('key2'));
//   print(myMap.keys);
//   myMap.putIfAbsent('key3',()=>'value3');
//   myMap.clear();

// }

// void main() {
//   // Create a list of names
//   List<String> myName = ['J', 'E', 'L', 'O', 'N'];

//   myName.forEach((name) => print(name));
// }

// void main() {
//   // Create a set of fruits
//   Set<String> fruits = {'Banana', 'Apple', 'Grapes', 'Orange'};

//   // Print all fruits using a for loop
//   for (var fruit in fruits) {
//     print(fruit);
//   }
// }

// import 'dart:io';

// void main() {
//   print("Enter number of expenses:");
//   int n = int.parse(stdin.readLineSync()!);
//   double total = 0;

//   for (int i = 0; i < n; i++) {
//     print("Enter expense:");
//     total += double.parse(stdin.readLineSync()!);
//   }

//   print("Total: \$${total.toStringAsFixed(2)}");
// }

// void sayHello({required String name}) {
//   //named parameter
// }

// void sayHello2(String name, [String title = ""]) {
//   //title is set as default parameter
// }

// void sayHello3(String? name) {
//   //optional parameter
// }

// class OOPConcept {
//   String? name;

//   OOPConcept({required String name}) {
//     this.name = name;
//   }
// }

// class Animal {
//   void interact() {
//     print("Animals can interact");
//   }
// }

// class Duck extends Animal {
//   void swim() {
//     print("Duck swims");
//   }

//   void main() {
//     Duck duck = new Duck();
//     duck.interact();
//     duck.swim();
//   }
// }

// abstract class Motor {
//   void run();
// }

// class Car extends Motor {
//   @override
//   void run() {
//     print("This Car is running");
//   }
// }

// class ImplementingEncapsulation {
//   int? _model;
//   ImplementingEncapsulation(int? model) {
//     this._model = model;
//   }
//   void setModel(int? model) {
//     this._model = model;
//   }

//   int? getModel() {
//     return this._model;
//   }
// }

// class Polymorph {
//   int add(int a, int b) {
//     return a + b;
//   }
// }

// class UsingPoly implements Polymorph {
//   int add(int a, int b) {
//     return a * b;
//   }
// }

// class Student {
//   String? name;
//   int? rollNo;
//   List<int>? marks;

//   Student(this.name, this.rollNo, this.marks);

//   int calculateTotal() {
//     int total = 0;
//     for (int mark in marks) {
//       total += mark;
//     }
//     return total;
//   }
// }
