/*Task 4: Inheritance 
Create a base class Vehicle with a method move(). 
Create a subclass Car that adds a method honk(). 
Create a Car object and call both methods. */
class Vehicle {
  void move() {
    print('The vehicle is moving.');
  }
}
class Car extends Vehicle {
  void honk() {
    print('The car is honking.');
  }
}
void main() {
  Car myCar = Car();
  myCar.move(); 
  myCar.honk(); 
}