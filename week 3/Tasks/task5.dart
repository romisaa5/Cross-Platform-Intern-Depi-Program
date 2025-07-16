/*Task 5: Inheritance with Constructor 
Create a class Animal with a constructor that accepts a name. 
Create a subclass Cat with age, and pass name to the superclass using super.name. 
Add a method to print both name and age. */
class Animal {
  String name;

  Animal(this.name);
}
class Cat extends Animal {
  int age;

  Cat(String name, this.age) : super(name);

  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
  }
}
void main() {
  Cat myCat = Cat('Whiskers', 3);
  myCat.displayInfo();
}