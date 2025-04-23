class Parameters{ 
  int age;
  Parameters(this.age);
  void sayHello({required String  name, String title = ""}){
    print("Hello $title $name");
  }

  void main(){
    sayHello("myName", "Mr.");
    sayHello("myName");
  }
}