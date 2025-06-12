class Laptop {
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);

  void displayDetails() {
    print('Laptop ID: $id, Name: $name, RAM: $ram GB');
  }
}

class House {
  int id;
  String name;
  double prize;

  // Constructor
  House(this.id, this.name, this.prize);

  void displayDetails() {
    print('House ID: $id, Name: $name, Prize: \$${prize}');
  }
}
class Animal{
  int id;
  String name;
  String colour;
  
  Animal(this.id, this.name, this.colour);
}

class Cat extends Animal{
  String sound;
  
  Cat(int id, String name, String colour, this.sound) : super(id,name,colour);
  
  void displayDetails(){
    print('Cat Details:');
    print('ID: $id');
    print('Name: $name');
    print('Color: $colour');
    print('Sound: $sound');
  }
}

class Camera {
  int _id;
  String _brand;
  String _color;
  double _prize;

  Camera(this._id, this._brand, this._color, this._prize);
  
  //GETTER
  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  double get prize => _prize;

  //SETTER
  set id(int id) => _id = id;
  set brand(String brand) => _brand = brand;
  set color(String color) => _color = color;
  set prize(double prize) => _prize = prize;

  void displayDetails() {
    print('Camera ID: $_id, Brand: $_brand, Color: $_color, Prize: Rs$_prize');
  }
}

void main() {
  
  //Laptop
  Laptop laptop1 = Laptop(1, 'Dell XPS', 16);
  Laptop laptop2 = Laptop(2, 'MacBook Pro', 32);
  Laptop laptop3 = Laptop(3, 'HP Spectre', 8);
  
  print('Laptop Details:');
  laptop1.displayDetails();
  laptop2.displayDetails();
  laptop3.displayDetails();
  
  //House
  
  List<House> houses = [];

  House house1 = House(1, 'Sunset Villa', 250000.0);
  House house2 = House(2, 'Ocean Breeze', 350000.0);
  House house3 = House(3, 'Mountain Retreat', 180000.0);

  houses.add(house1);
  houses.add(house2);
  houses.add(house3);

  print('House Details:');
  for (var house in houses) {
    house.displayDetails();
  }
  
  //Cat wala 
  Cat cat = Cat(1, 'Whiskers', 'White', 'Meow');
  cat.displayDetails();
  
  //Camera
  Camera camera1 = Camera(1, 'Canon', 'Black', 150000.0);
  Camera camera2 = Camera(2, 'Nikon', 'Silver', 145000.0);
  Camera camera3 = Camera(3, 'Sony', 'White', 200000.0);

  print('Camera Details:');
  camera1.displayDetails();
  camera2.displayDetails();
  camera3.displayDetails();
}